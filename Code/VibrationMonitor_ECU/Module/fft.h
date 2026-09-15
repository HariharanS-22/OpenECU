/*
 * fft.h
 *
 *  Created on: 15-Sept-2026
 *      Author: Hariharan
 */

#ifndef FFT_H_
#define FFT_H_

#ifndef FFT_H
#define FFT_H

#include <stdint.h>
#include <math.h>
#include "arm_math.h"

#define FFT_SIZE        64U
#define SAMPLE_RATE_HZ  800.0f

typedef struct
{
    float x;
    float y;
    float z;
} VibrationSample_t;

typedef struct
{
    float frequency;
    float magnitude;
    uint32_t bin;
} FFT_Peak_t;

typedef struct
{
    FFT_Peak_t x;
    FFT_Peak_t y;
    FFT_Peak_t z;
} VibrationFFTResult_t;

arm_status FFT_Init(void);

void FFT_Process(const VibrationSample_t *input, VibrationFFTResult_t *result);

void FFT_ProcessAxis(const float *input, FFT_Peak_t *peak);

float FFT_BinToFrequency(uint32_t bin);

float FFT_GetResolution(void);

#endif /* FFT_H_ */
