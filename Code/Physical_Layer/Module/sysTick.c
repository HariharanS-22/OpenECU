/*
 * sysTick.c
 *
 *  Created on: July 20, 2026
 *      Author: Hariharan
 */

#include "sysTick.h"

#define SYSTICK_CLK				(16000000)

#define SYSTICK_LOAD_VAL 		((SYSTICK_CLK/1000) - 1)
#define CSR_ENABLE				(1U << 0)
#define CSR_TICKINT				(1U << 1)
#define CSR_CLKSOURCE			(1U << 2)
#define CSR_COUNTFLAG			(1U << 16)

volatile uint32_t sysTick = 0;

void SysTick_Handler(void){
    sysTick++;
}

void SysTick_config(void){

	// Load the reg with the number of clocks per cycle
	SysTick->LOAD = SYSTICK_LOAD_VAL;

	//Clear the SysTick current value register
	SysTick->VAL = 0;

	//Enable the SysTick and select the Internal Clock source
	SysTick->CTRL =  CSR_CLKSOURCE | CSR_TICKINT | CSR_ENABLE ;

	NVIC_EnableIRQ(SysTick_IRQn);
	__enable_irq();

}

