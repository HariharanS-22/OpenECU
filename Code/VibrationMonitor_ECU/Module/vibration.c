
#include "vibration.h"
#include "adxl345.h"
#include "uart.h"
#include "FreeRTOS.h"
#include "queue.h"

#include <math.h>
#include <stdint.h>
#include <stdio.h>

#define VIBRATION_SAMPLE_RATE_HZ       800U

#define VIBRATION_BUFFER_SIZE          256U

#define VIBRATION_G_SCALE              0.0039f

extern QueueHandle_t TDtoCANQueueHandle;
extern QueueHandle_t FDtoCANQueueHandle;

char tempBuf[256];

VibrationSample_t vibBuf_A[VIBRATION_BUFFER_SIZE];
VibrationSample_t vibBuf_B[VIBRATION_BUFFER_SIZE];

static volatile uint8_t activeBuffer = 0U;
static volatile uint16_t bufferIndex = 0U;

// 0 -> Buffer A | 1 -> Buffer B
static volatile uint8_t completedBuffer = 0U;

VibrationResult_t vibrationResult_time;

VibrationSample_t *inputBuf;
VibrationFFTResult_t FFTResult;

static void Vibration_StoreSample(float x, float y, float z);

static float Vibration_GetMagnitude(const VibrationSample_t *sample);
static float Vibration_CalculateRMS( VibrationSample_t *buffer);
static float Vibration_CalculatePeak( VibrationSample_t *buffer);
static float Vibration_CalculateCrestFactor( float peak,  float rms);

void Vibration_ProcessTimeDomain(void);
void Vibration_ProcessFreqDomain(void);
void Vibration_PrintResult(void);

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
    vibrationResult_time.rms = 0.0f;
    vibrationResult_time.peak = 0.0f;
    vibrationResult_time.crest_factor = 0.0f;

    //Initialize ADXL345
    ADXL345_Init();
}

void Vibration_ProcessTimeDomain(void)
{
    VibrationSample_t *buffer;

    float rms;
    float peak;
    float crest;

    buffer =  Vibration_GetCompletedBuffer();

    rms = Vibration_CalculateRMS( buffer);

    peak = Vibration_CalculatePeak( buffer );

    crest = Vibration_CalculateCrestFactor( peak, rms );

    vibrationResult_time.rms = rms;
    vibrationResult_time.peak = peak;
    vibrationResult_time.crest_factor = crest;
//
//    xQueueSend(TDtoCANQueueHandle, &vibrationResult_time, 0);

}

void Vibration_ProcessFreqDomain(void){
	inputBuf = Vibration_GetCompletedBuffer();

	FFT_Process((VibrationSample_t *)inputBuf, &FFTResult);

//	xQueueSend(FDtoCANQueueHandle, &FFTResult.x, 0);
//	xQueueSend(FDtoCANQueueHandle, &FFTResult.y, 0);
//	xQueueSend(FDtoCANQueueHandle, &FFTResult.z, 0);

}

void Vibration_PrintResult(void)
{
	vTaskSuspendAll();

    sprintf(tempBuf, "Vibration Time Result:\r\nRMS : %f\r\nPeak : %f\r\nCrest : %f\r\n",vibrationResult_time.rms,vibrationResult_time.peak,vibrationResult_time.crest_factor);
    customPrint(tempBuf,strlen(tempBuf));

    sprintf(tempBuf, "\r\nVibration Freq Result:\r\nX Component\r\nFreq : %f\r\nMag : %f\r\nBin : %lu\r\n",FFTResult.x.frequency, FFTResult.x.magnitude, FFTResult.x.bin);
    customPrint(tempBuf,strlen(tempBuf));

    sprintf(tempBuf, "\r\nY Component\r\nFreq : %f\r\nMag : %f\r\nBin : %lu\r\n",FFTResult.y.frequency, FFTResult.y.magnitude, FFTResult.y.bin);
    customPrint(tempBuf,strlen(tempBuf));

    sprintf(tempBuf, "\r\nZ Component\r\nFreq : %f\r\nMag : %f\r\nBin : %lu\r\n",FFTResult.z.frequency, FFTResult.z.magnitude, FFTResult.z.bin);
    customPrint(tempBuf,strlen(tempBuf));

    xTaskResumeAll();
}

void VibrationSamplingTask(void)
{
    ADXL345_RawData_t rawData;

    float x;
    float y;
    float z;

	// Read ADXL345
	ADXL345_ReadXYZ(&rawData);

	//Convert raw ADC values to acceleration in g
	x = ADXL345_ConvertToG( rawData.x );
	y = ADXL345_ConvertToG( rawData.y );
	z = ADXL345_ConvertToG( rawData.z );

	//Store sample in active buffer
	Vibration_StoreSample( x, y, z );
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

        activeBuffer ^= 1U;

        //Start writing at beginning of new buffer.
        bufferIndex = 0U;
        sprintf(tempBuf, "Data:\r\n x: %f  y: %f z: %f\r\n",x, y, z);
        customPrint(tempBuf,strlen(tempBuf));

    }
}

VibrationSample_t* Vibration_GetCompletedBuffer()
{
    if (completedBuffer == 0U)
    {
        return (VibrationSample_t*) vibBuf_A;
    }

    return (VibrationSample_t*) vibBuf_B;
}

static float Vibration_GetMagnitude( const VibrationSample_t *sample)
{
    return sqrtf(
        (sample->x * sample->x) +
        (sample->y * sample->y) +
        (sample->z * sample->z)
    );
}


static float Vibration_CalculateRMS( VibrationSample_t *buffer)
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

static float Vibration_CalculatePeak( VibrationSample_t *buffer){
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

static float Vibration_CalculateCrestFactor( float peak,  float rms)
{
    if (rms < 0.0001f)
    {
        return 0.0f;
    }

    return peak / rms;
}


