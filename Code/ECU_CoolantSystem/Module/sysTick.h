#ifndef SYSTICK_H_
#define SYSTICK_H_

//#include "stm32f4xx.h"
#include "stm32f446xx.h"

extern volatile uint32_t sysTick;

void SysTick_Handler(void);

void SysTick_config(void);


#endif /* SYSTICK_H_ */
