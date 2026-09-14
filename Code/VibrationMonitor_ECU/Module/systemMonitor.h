/*
 * systemMonitor.h
 *
 *  Created on: Sep 6, 2026
 *      Author: Jagakishan
 */

#ifndef SYSTEMMONITOR_H_
#define SYSTEMMONITOR_H_

#include <stdint.h>
#include "uart.h"
#include "FreeRTOS.h"
#include "task.h"
#include <string.h>

typedef struct
{
    uint32_t freeHeap;
    uint32_t minimumFreeHeap;

    uint32_t tempMaxStackUsage;
    uint32_t coolerMaxStackUsage;
    uint32_t monitorMaxStackUsage;
    uint32_t canTxMaxStackUsage;
    uint32_t iwdgMaxStackUsage;

} SystemMonitorData_t;

void SystemMonitor_Init(void);
void SystemMonitorTask(void);



#endif /* SYSTEMMONITOR_H_ */
