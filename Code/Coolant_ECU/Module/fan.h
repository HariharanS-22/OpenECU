/*
 * fan.h
 *
 *  Created on: 05-Sept-2026
 *      Author: Hariharan
 */

#ifndef FAN_H_
#define FAN_H_

#include "stm32f4xx.h"
#include <stdint.h>

void Fan_Init(void);

void Fan_SetSpeed(uint8_t duty);
void Fan_Stop(void);

#endif /* FAN_H_ */
