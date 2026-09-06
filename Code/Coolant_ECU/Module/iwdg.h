/*
 * iwdg.h
 *
 *  Created on: Sep 6, 2026
 *      Author: Jagakishan
 */

#ifndef IWDG_H_
#define IWDG_H_

#include "stm32f446xx.h"

#include "FreeRTOS.h"
#include "task.h"

void Watchdog_Init(void);
void Watchdog_Refresh(void);

#endif /* IWDG_H_ */
