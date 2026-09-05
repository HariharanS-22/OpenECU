/*
 * timer.c
 *
 *  Created on: 05-Sept-2026
 *      Author: Hariharan
 */


#include "timer.h"

void Timer_Init(void)
{
	//Enable TIM2 clock
    RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;

    /* TIM2 clock = 16 MHz     * Prescaler = 16 - 1     * Timer frequency:     * 16 MHz / 16 = 1 MHz     */
    TIM2->PSC = 16U - 1U;

    TIM2->ARR = 0xFFFFFFFFU;

    //Start timer
    TIM2->CR1 |= TIM_CR1_CEN;
}


void TimerDelay_us(uint32_t us)
{
    uint32_t start = TIM2->CNT;

    while ((uint32_t)(TIM2->CNT - start) < us)
    {
        /* wait */
    }
}


void TimerDelay_ms(uint32_t ms)
{
    while (ms--)
    {
        TimerDelay_us(1000U);
    }
}
