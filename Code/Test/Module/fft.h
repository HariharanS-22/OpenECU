/*
 * fft.h
 *
 *  Created on: 15-Sept-2026
 *      Author: Hariharan
 */

#ifndef FFT_H_
#define FFT_H_

#include <stdint.h>
#include <math.h>
#include "arm_math.h"

#include "vibration.h"

#define FFT_SIZE        64U
#define SAMPLE_RATE_HZ  800.0f

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

float FFT_GetResolution(void);

#endif /* FFT_H_ */
