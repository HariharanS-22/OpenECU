/*
 * vibration.h
 *
 *  Created on: 14-Sept-2026
 *      Author: Hariharan
 */

#ifndef VIBRATION_H_
#define VIBRATION_H_

#include "fft.h"
#include "vibrationFFT.h"

#define SAMPLE_RATE    800.0f

typedef struct
{
    float rms;
    float peak;
    float crest_factor;

} VibrationResult_t;

extern VibrationResult_t vibration_result;

void Vibration_Init(void);
void Vibration_ProcessTimeDomain(void);
void Vibration_ProcessFreqDomain(void);
void Vibration_PrintResult(void);
void VibrationSamplingTask(void);
VibrationSample_t* Vibration_GetCompletedBuffer();

#endif /* VIBRATION_H_ */
