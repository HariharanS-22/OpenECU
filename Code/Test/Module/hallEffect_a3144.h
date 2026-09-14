/*
 * hallEffect_a3144.h
 *
 *  Created on: 14-Sept-2026
 *      Author: Hariharan
 */

#ifndef HALLEFFECT_A3144_H_
#define HALLEFFECT_A3144_H_

#include "stm32f4xx.h"
#include <stdint.h>

//A3144 OUT -> PB4 - TIM3_CH1 - Input Capture

#define A3144_GPIO_PORT       GPIOB
#define A3144_GPIO_PIN        4U
#define A3144_GPIO_CLOCK      RCC_AHB1ENR_GPIOBEN
#define A3144_GPIO_AF         2U
/*
 * One magnet on shaft: PPR = 1
 * Two magnets:  PPR = 2
 */

#define A3144_PULSES_PER_REVOLUTION    1U

void A3144_Init(void);
void A3144_TimerCapture_Init(void);

uint32_t A3144_GetCapturePeriod(void);
float A3144_GetRPM(void);
uint8_t A3144_IsRotating(void);
void A3144_Reset(void);

extern volatile uint32_t A3144_PulseCounter;

#endif /* HALLEFFECT_A3144_H_ */
