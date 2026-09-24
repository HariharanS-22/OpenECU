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
	uint64_t temp=0;


	systemData.freeHeap = xPortGetFreeHeapSize();
	temp=((uint64_t)0<<32)+systemData.freeHeap;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));

	systemData.minimumFreeHeap = xPortGetMinimumEverFreeHeapSize();
	temp=((uint64_t)1<<32)+systemData.minimumFreeHeap;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));

	systemData.tempMaxStackUsage = uxTaskGetStackHighWaterMark(temperatureTaskHandle);
	temp=((uint64_t)2<<32)+systemData.tempMaxStackUsage;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));

	systemData.coolerMaxStackUsage = uxTaskGetStackHighWaterMark(coolerTaskHandle);
	temp=((uint64_t)3<<32)+systemData.coolerMaxStackUsage;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));

	systemData.monitorMaxStackUsage = uxTaskGetStackHighWaterMark(MonitorTaskHandle);
	temp=((uint64_t)4<<32)+systemData.monitorMaxStackUsage;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));

	systemData.canTxMaxStackUsage = uxTaskGetStackHighWaterMark(CAN_Tx_TaskHandle);
	temp=((uint64_t)5<<32)+systemData.canTxMaxStackUsage;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));

	systemData.iwdgMaxStackUsage = uxTaskGetStackHighWaterMark(IWDG_TaskHandle);
	temp=((uint64_t)6<<32)+systemData.iwdgMaxStackUsage;
	CAN_SendWord(temp);
	vTaskDelay(pdMS_TO_TICKS(10));


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

