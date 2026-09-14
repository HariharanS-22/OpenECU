/*
 * adxl345.h
 *
 *  Created on: 14-Sept-2026
 *      Author: Hariharan
 */

#ifndef ADXL345_H_
#define ADXL345_H_

#include "stm32f4xx.h"
#include <stdint.h>

#define ADXL345_CS_PORT GPIOA
#define ADXL345_CS_PIN  4

#define ADXL345_DEVID       0x00
#define ADXL345_BW_RATE     0x2C
#define ADXL345_POWER_CTL   0x2D
#define ADXL345_DATA_FORMAT 0x31
#define ADXL345_DATAX0      0x32

typedef struct
{
    int16_t x;
    int16_t y;
    int16_t z;

} ADXL345_RawData_t;

void ADXL345_Init(void);

uint8_t ADXL345_ReadReg(uint8_t reg);

void ADXL345_WriteReg(uint8_t reg, uint8_t value);

void ADXL345_ReadXYZ(ADXL345_RawData_t *data);

float ADXL345_ConvertToG(int16_t raw);

#endif /* ADXL345_H_ */
