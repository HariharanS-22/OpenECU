/*
 * ds18b20.h
 *
 *  Created on: 04-Sept-2026
 *      Author: Hariharan
 */

#ifndef DS18B20_H_
#define DS18B20_H_

#include "stm32f446xx.h"

void DS18B20_Init(void);

int16_t DS18B20_ReadTemperature(void);


#endif /* DS18B20_H_ */
