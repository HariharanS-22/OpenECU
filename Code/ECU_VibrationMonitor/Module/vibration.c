
#include "vibration.h"
#include "adxl345.h"

#include "FreeRTOS.h"
#include "task.h"

#include <math.h>
#include <stdint.h>

#define VIBRATION_SAMPLE_RATE_HZ       800U

#define VIBRATION_BUFFER_SIZE          256U

#define VIBRATION_G_SCALE              0.0039f

extern TaskHandle_t FFTTaskHandle;

static VibrationSample_t vibBuf_A[VIBRATION_BUFFER_SIZE];
static VibrationSample_t vibBuf_B[VIBRATION_BUFFER_SIZE];

static volatile uint8_t activeBuffer = 0U;
static volatile uint16_t bufferIndex = 0U;

// 0 -> Buffer A | 1 -> Buffer B
static volatile uint8_t completedBuffer = 0U;

VibrationResult_t vibrationResult;

volatile uint32_t vibrationTaskHeartbeat = 0U;

static void Vibration_StoreSample(float x, float y, float z);
static float Vibration_GetMagnitude(const VibrationSample_t *sample);

void Vibration_Init(void)
{
    uint16_t i;

    //Clear Buffer A
    for (i = 0U; i < VIBRATION_BUFFER_SIZE; i++)
    {
        vibBuf_A[i].x = 0.0f;
        vibBuf_A[i].y = 0.0f;
        vibBuf_A[i].z = 0.0f;

        vibBuf_B[i].x = 0.0f;
        vibBuf_B[i].y = 0.0f;
        vibBuf_B[i].z = 0.0f;
    }


    //Reset buffer state
    activeBuffer = 0U;
    bufferIndex = 0U;
    completedBuffer = 0U;

    //Reset results
    vibrationResult.rms = 0.0f;
    vibrationResult.peak = 0.0f;
    vibrationResult.crest_factor = 0.0f;
    vibrationResult.sample_count = 0U;

    //Initialize ADXL345
    ADXL345_Init();
}

void VibrationSamplingTask(void *argument)
{
    ADXL345_RawData_t rawData;

    float x;
    float y;
    float z;

    (void)argument;


    for (;;)
    {
        /*
         * Wait until sampling timer / sensor data-ready
         * notifies this task.
         *
         * The timer ISR should execute:
         *
         * vTaskNotifyGiveFromISR(...)
         *
         */

        ulTaskNotifyTake(pdTRUE, portMAX_DELAY );

        // Read ADXL345
        ADXL345_ReadXYZ(&rawData);

        //Convert raw ADC values to acceleration in g
        x = ADXL345_ConvertToG( rawData.x );
        y = ADXL345_ConvertToG( rawData.y );
        z = ADXL345_ConvertToG( rawData.z );

        //Store sample in active buffer
        Vibration_StoreSample( x, y, z );

        //Increment total sample counter
        vibrationResult.sample_count++;

        //Heartbeat for watchdog
        vibrationTaskHeartbeat++;
    }
}

static void Vibration_StoreSample( float x, float y, float z){
	// Store in currently active buffer
    if (activeBuffer == 0U)
    {
        vibBuf_A[bufferIndex].x = x;
        vibBuf_A[bufferIndex].y = y;
        vibBuf_A[bufferIndex].z = z;
    }
    else
    {
        vibBuf_B[bufferIndex].x = x;
        vibBuf_B[bufferIndex].y = y;
        vibBuf_B[bufferIndex].z = z;
    }
    //Next index
    bufferIndex++;

    if (bufferIndex >= VIBRATION_BUFFER_SIZE)
    {
        completedBuffer = activeBuffer;
        /*
         * Switch to the other buffer.
         *
         * The sampling task can immediately continue
         * acquiring data while FFT processes the
         * completed buffer.
         */
        activeBuffer ^= 1U;

        //Start writing at beginning of new buffer.
        bufferIndex = 0U;


        BaseType_t higherPriorityTaskWoken =  pdFALSE;

        if (FFTTaskHandle != NULL)
        {
            vTaskNotifyGiveFromISR( FFTTaskHandle, &higherPriorityTaskWoken);
        }

    }
}

static void Vibration_NotifyFFTTask(void)
{
    if (FFTTaskHandle != NULL)
    {
        xTaskNotifyGive(
            FFTTaskHandle
        );
    }
}

VibrationSample_t * Vibration_GetCompletedBuffer(void)
{
    if (completedBuffer == 0U)
    {
        return vibBuf_A;
    }

    return vibBuf_B;
}

static float Vibration_GetMagnitude( const VibrationSample_t *sample)
{
    return sqrtf(
        (sample->x * sample->x) +
        (sample->y * sample->y) +
        (sample->z * sample->z)
    );
}


float Vibration_CalculateRMS( VibrationSample_t *buffer)
{
    float sum = 0.0f;

    uint16_t i;

    for (i = 0U; i < VIBRATION_BUFFER_SIZE; i++){
        float magnitude;

        magnitude = Vibration_GetMagnitude( &buffer[i]);
        sum += magnitude * magnitude;
    }

    if (VIBRATION_BUFFER_SIZE == 0U)
    {
        return 0.0f;
    }


    return sqrtf(sum / (float)VIBRATION_BUFFER_SIZE);
}

float Vibration_CalculatePeak( VibrationSample_t *buffer){
    float peak = 0.0f;

    uint16_t i;

    for (i = 0U; i < VIBRATION_BUFFER_SIZE; i++){
        float magnitude;

        magnitude =  Vibration_GetMagnitude( &buffer[i] );

        if (magnitude > peak)
        {
            peak = magnitude;
        }
    }
    return peak;
}

float Vibration_CalculateCrestFactor( float peak,  float rms)
{
    if (rms < 0.0001f)
    {
        return 0.0f;
    }

    return peak / rms;
}

void Vibration_ProcessTimeDomain(void)
{
    VibrationSample_t *buffer;

    float rms;
    float peak;
    float crest;


    /*
     * Get buffer which is no longer being filled.
     */

    buffer =  Vibration_GetCompletedBuffer();

    rms = Vibration_CalculateRMS( buffer);

    peak = Vibration_CalculatePeak( buffer );

    crest = Vibration_CalculateCrestFactor( peak, rms );

    vibrationResult.rms = rms;
    vibrationResult.peak = peak;
    vibrationResult.crest_factor = crest;
}


uint8_t Vibration_GetActiveBuffer(void)
{
    return activeBuffer;
}

uint8_t Vibration_GetCompletedBuffer(void)
{
    return completedBuffer;
}


VibrationResult_t * Vibration_GetResult(void)
{
    return &vibrationResult;
}
