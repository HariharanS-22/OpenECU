/*
 * iwdg.c
 *
 *  Created on: Sep 6, 2026
 *      Author: Jagakishan
 */

#include "iwdg.h"

//Time out 0.5s

#define IWDG_RELOAD_VALUE    64U

void Watchdog_Init(void)
{
    //Enable write access to IWDG registers
    IWDG->KR = 0x5555U;

    //Prescaler = /256
    IWDG->PR = 6U;

    //Reload value
    IWDG->RLR = IWDG_RELOAD_VALUE;

    // Kick the watchdog
    IWDG->KR = 0xAAAAU;

    // Start watchdog
    IWDG->KR = 0xCCCCU;
}


void Watchdog_Refresh(void)
{
    //Kick the dog
    IWDG->KR = 0xAAAAU;
}
