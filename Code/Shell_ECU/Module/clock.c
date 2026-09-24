/*
 * clock.c
 *
 *  Created on: 24-Sept-2026
 *      Author: Hariharan
 */


#include "clock.h"

void Clock_Init_16MHz(void)
{
    /*
     * HSI = 8 MHz
     * PLL input = HSI / 2 = 4 MHz
     * PLL multiplier = x4
     * SYSCLK = 4 MHz x 4 = 16 MHz
     */

    /* Enable HSI */
    RCC->CR |= RCC_CR_HSION;

    /* Wait for HSI ready */
    while (!(RCC->CR & RCC_CR_HSIRDY)) { }

    // Set AHB prescaler = /1
    RCC->CFGR &= ~RCC_CFGR_HPRE;

    //Set APB1 prescaler = /1
    RCC->CFGR &= ~RCC_CFGR_PPRE1;

    //Set APB2 prescaler = /1
    RCC->CFGR &= ~RCC_CFGR_PPRE2;

    //PLL source = HSI/2 --> PLLSRC = 0
    RCC->CFGR &= ~RCC_CFGR_PLLSRC;

    //PLL multiplication factor = x4 --> PLLMUL[3:0] = 0010
    RCC->CFGR &= ~RCC_CFGR_PLLMULL;
    RCC->CFGR |= RCC_CFGR_PLLMULL4;

    //Enable PLL
    RCC->CR |= RCC_CR_PLLON;

    /* Wait for PLL ready */
    while (!(RCC->CR & RCC_CR_PLLRDY)){ }

    //Select PLL as SYSCLK --> SW = 10
    RCC->CFGR &= ~RCC_CFGR_SW;
    RCC->CFGR |= RCC_CFGR_SW_PLL;

    //Wait until PLL becomes SYSCLK
    while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL) { }
}
