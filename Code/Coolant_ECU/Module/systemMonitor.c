/*
 * systemMonitor.c
 *
 *  Created on: Sep 6, 2026
 *      Author: Jagakishan
 */

#include "systemMonitor.h"

static SystemMonitorData_t systemData;

extern TaskHandle_t temperatureTaskHandle;
extern TaskHandle_t coolerTaskHandle;
extern TaskHandle_t CAN_Tx_TaskHandle;
extern TaskHandle_t MonitorTaskHandle;
extern TaskHandle_t IWDG_TaskHandle;


void SystemMonitor_Init(void)
{
    systemData.freeHeap = 0U;
    systemData.minimumFreeHeap = 0U;

    systemData.tempMaxStackUsage = 0U;
    systemData.coolerMaxStackUsage = 0U;
    systemData.monitorMaxStackUsage = 0U;
    systemData.iwdgMaxStackUsage = 0U;
    systemData.canTxMaxStackUsage = 0U;
}


void SystemMonitorTask(){

    char stringBuf[256];


	systemData.freeHeap = xPortGetFreeHeapSize();

	systemData.minimumFreeHeap = xPortGetMinimumEverFreeHeapSize();

	systemData.tempMaxStackUsage = uxTaskGetStackHighWaterMark(temperatureTaskHandle);
	systemData.coolerMaxStackUsage = uxTaskGetStackHighWaterMark(coolerTaskHandle);
	systemData.monitorMaxStackUsage = uxTaskGetStackHighWaterMark(MonitorTaskHandle);
	systemData.canTxMaxStackUsage = uxTaskGetStackHighWaterMark(CAN_Tx_TaskHandle);
	systemData.iwdgMaxStackUsage = uxTaskGetStackHighWaterMark(IWDG_TaskHandle);


	sprintf(stringBuf,"\r\n");
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"===== SYSTEM MONITOR =====\r\n");
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"Free Heap       : %lu bytes\r\n", (unsigned long)systemData.freeHeap);
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"Minimum Heap    : %lu bytes\r\n", (unsigned long)systemData.minimumFreeHeap);
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"Temp Stack Free : %lu words\r\n", (unsigned long) systemData.tempMaxStackUsage);
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"Cooler Stack    : %lu words\r\n", (unsigned long)systemData.coolerMaxStackUsage);
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"Monitor Stack   : %lu words\r\n",(unsigned long)systemData.monitorMaxStackUsage);
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"Watchdog Stack  : %lu words\r\n",(unsigned long)systemData.iwdgMaxStackUsage);
	customPrint(stringBuf, strlen(stringBuf));

	sprintf(stringBuf,"==========================\r\n");
	customPrint(stringBuf, strlen(stringBuf));

}

