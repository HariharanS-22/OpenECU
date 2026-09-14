/*
 * vibration.h
 *
 *  Created on: 14-Sept-2026
 *      Author: Hariharan
 */

#ifndef VIBRATION_H_
#define VIBRATION_H_

#include <stdint.h>

#define FFT_SIZE       256
#define SAMPLE_RATE    800.0f

typedef struct
{
    float x;
    float y;
    float z;

} VibrationSample_t;


typedef struct
{
    float rms;
    float peak;
    float crest_factor;

    uint32_t sample_count;

} VibrationResult_t;

extern VibrationResult_t vibration_result;

void Vibration_Init(void);
uint8_t Vibration_GetActiveBuffer(void);
uint8_t Vibration_GetCompletedBuffer(void);
VibrationResult_t * Vibration_GetResult(void);
void Vibration_ProcessTimeDomain(void);


#endif /* VIBRATION_H_ */
