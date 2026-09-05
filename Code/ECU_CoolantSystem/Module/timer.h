/*
 * timer.h
 *
 *  Created on: 05-Sept-2026
 *      Author: Hariharan
 */

#ifndef TIMER_H_
#define TIMER_H_

#include "stm32f4xx.h"
#include <stdint.h>

void TimerDelay_Init(void);
void TimerDelay_us(uint32_t us);
void TimerDelay_ms(uint32_t ms);


#endif /* TIMER_H_ */
