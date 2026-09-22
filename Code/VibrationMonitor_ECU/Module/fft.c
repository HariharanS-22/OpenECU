/*
 * fft.c
 *
 *  Created on: 15-Sept-2026
 *      Author: Hariharan
 */


#include "fft.h"

static arm_rfft_fast_instance_f32 fftInstance;

static float fftInput[FFT_SIZE];
static float fftOutput[FFT_SIZE];

/*
 * Magnitude of positive-frequency bins.
 *
 * For a 64-point real FFT:
 *
 *   Bin 0  -> DC
 *   Bin 1  -> 12.5 Hz
 *   ...
 *   Bin 31 -> 387.5 Hz
 *   Bin 32 -> 400 Hz (Nyquist)
 */
static float magnitude[FFT_SIZE / 2U + 1U];

static float FFT_RemoveDC(const float *input)
{
    float sum = 0.0f;

    for (uint32_t i = 0U; i < FFT_SIZE; i++)
    {
        sum += input[i];
    }

    return sum / (float)FFT_SIZE;
}

// Hann window: w(n) = 0.5 * [1 - cos(2*pi*n/(N-1))]
static float FFT_HannWindow(uint32_t index)
{
    return 0.5f * (1.0f - cosf((2.0f * PI * (float)index) / (float)(FFT_SIZE - 1U)));
}

static void FFT_CalculateMagnitude(void)
{
    /*
     * CMSIS-DSP arm_rfft_fast_f32() output format:
     *
     * fftOutput[0] = DC real component
     * fftOutput[1] = Nyquist real component
     *
     * For k = 1 ... N/2-1:
     *
     * fftOutput[2*k]     = Real(k)
     * fftOutput[2*k + 1] = Imaginary(k)
     */

    /* DC component */
    magnitude[0] = fabsf(fftOutput[0])/ (float)FFT_SIZE;

    /*
     * Positive-frequency bins
     * 1 ... FFT_SIZE/2 - 1
     */
    for (uint32_t k = 1U; k < (FFT_SIZE / 2U); k++)
    {
        float real = fftOutput[2U * k];
        float imag = fftOutput[(2U * k) + 1U];

        magnitude[k] = sqrtf((real * real) + (imag * imag));

        magnitude[k] *= 2.0f / (float)FFT_SIZE;
    }

    /* Nyquist component */
    magnitude[FFT_SIZE / 2U] = fabsf(fftOutput[1])/ (float)FFT_SIZE;


}

/*
 * Convert FFT bin number to frequency : f = k * Fs / N
 */
static float FFT_BinToFrequency(uint32_t bin)
{
    return (bin * SAMPLE_RATE_HZ) / (float)FFT_SIZE;
}

static void FFT_ProcessAxis(const float *input, FFT_Peak_t *peak){
    float mean;

    if ((input == NULL))
    {
        return;
    }

    //Step 1: Calculate DC/mean value
    mean = FFT_RemoveDC(input);

    //Step 2: Remove DC and apply Hann window
    for (uint32_t i = 0U; i < FFT_SIZE; i++)
    {
        float sample;

        sample = input[i] - mean;
        sample *= FFT_HannWindow(i);

        fftInput[i] = sample;
    }

    //Step 3: Perform real FFT
    arm_rfft_fast_f32(&fftInstance, fftInput, fftOutput, 0);

    //Step 4: Calculate magnitude spectrum
    FFT_CalculateMagnitude();


    /* --------------------------------------------------------
     * Step 5: Find dominant frequency
     *
     * Ignore bin 0 because it represents DC.
     *
     * Search bins:      1 ... 31
     *
     * Nyquist bin 32 is not normally considered for
     * rotating-machine vibration analysis.
     * -------------------------------------------------------- */

    float maxMagnitude = 0.0f;
    uint32_t maxBin = 1U;

    for (uint32_t k = 1U; k < (FFT_SIZE / 2U); k++)
    {
        if (magnitude[k] > maxMagnitude)
        {
            maxMagnitude = magnitude[k];
            maxBin = k;
        }
    }

    //Step 6: Store result
    peak->bin = maxBin;

    peak->frequency = FFT_BinToFrequency(maxBin);

    peak->magnitude = maxMagnitude;
}

arm_status FFT_Init(void)
{
    return arm_rfft_fast_init_f32(&fftInstance, FFT_SIZE);
}

void FFT_Process(const VibrationSample_t *input,  VibrationFFTResult_t *result){
    float xSamples[FFT_SIZE];
    float ySamples[FFT_SIZE];
    float zSamples[FFT_SIZE];

    if ((input == NULL))
    {
        return;
    }

    for (uint32_t i = 0U; i < FFT_SIZE; i++)    {
        xSamples[i] = input[i].x;
        ySamples[i] = input[i].y;
        zSamples[i] = input[i].z;
    }

    /* Process X axis */
    FFT_ProcessAxis(xSamples, &result->x);

    /* Process Y axis */
    FFT_ProcessAxis(ySamples, &result->y);

    /* Process Z axis */
    FFT_ProcessAxis(zSamples, &result->z);
}



/*
 * Return frequency resolution:   Δf = Fs / N
 */
float FFT_GetResolution(void)
{
    return SAMPLE_RATE_HZ / (float)FFT_SIZE;
}
