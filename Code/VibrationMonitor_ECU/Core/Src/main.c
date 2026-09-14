
#include "main.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "sysTick.h"
#include "can.h"
#include "ds18b20.h"
#include "timer.h"
#include "fan.h"
#include "uart.h"
#include "systemMonitor.h"
#include "iwdg.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#define DWT_CTRL (*(volatile uint32_t *)(0xE0001000))

uint16_t receivedID;
uint8_t receivedDLC;
uint16_t receivedTimeStamp;
uint64_t receivedMsg;

uint8_t flag_msgReceived;

char stringBuf[256];

typedef struct
{
    int16_t temperature_x100;

} TemperatureData_t;

static QueueHandle_t temperatureQueue;
static QueueHandle_t temperatureQueue2;

TaskHandle_t temperatureTaskHandle;
TaskHandle_t coolerTaskHandle;
TaskHandle_t CAN_Tx_TaskHandle;
TaskHandle_t MonitorTaskHandle;
TaskHandle_t IWDG_TaskHandle;

static void TemperatureTask(void *argument)
{
    TemperatureData_t temperatureData;
    (void)argument;

    while (1)
    {
        temperatureData.temperature_x100 = DS18B20_ReadTemperature();

        xQueueOverwrite(temperatureQueue, &temperatureData);
        xQueueOverwrite(temperatureQueue2, &temperatureData);

        vTaskDelay(pdMS_TO_TICKS(1));
    }
}

static void CoolerTask(void *argument)
{
    TemperatureData_t temperatureData;
    int16_t temperature;
    uint8_t fanSpeed;

    (void)argument;

    while (1)
    {
    	//Wait for latest temperature
        if (xQueueReceive(temperatureQueue, &temperatureData, portMAX_DELAY) == pdPASS)
        {
            temperature = temperatureData.temperature_x100;

            if (temperature == INT16_MIN){

                fanSpeed = 0U;
                //fanSpeed = 100U;
            	Fan_SetSpeed(fanSpeed);
                sprintf(stringBuf, "DS18B20 ERROR\r\n");
                customPrint(stringBuf, strlen(stringBuf));
                continue;
            }

            sprintf(stringBuf, "T : %d.%02d C\r\n", temperature / 100, temperature % 100);
            customPrint(stringBuf, strlen(stringBuf));

            if (temperature < 2000)
            {
                fanSpeed = 0U;
            }
            else if (temperature < 3000)
            {
                fanSpeed = 30U;
            }
            else if (temperature < 3500)
            {
                fanSpeed = 50U;
            }
            else if (temperature < 4000)
            {
                fanSpeed = 70U;
            }
            else if (temperature < 4500)
            {
                fanSpeed = 85U;
            }
            else
            {
                fanSpeed = 100U;
            }
            Fan_SetSpeed(fanSpeed);

            sprintf(stringBuf, "Fan : %d %%\r\n", fanSpeed);
            customPrint(stringBuf, strlen(stringBuf));
        }
    }
}

static void CAN_Task(void *argument){
	TemperatureData_t temperatureData;
    int16_t temperature;
    uint8_t tempBuf[2];

    while (1)
    {

    	if (xQueueReceive(temperatureQueue2, &temperatureData, portMAX_DELAY) == pdPASS){
    		temperature = temperatureData.temperature_x100;

    		tempBuf[1]=((temperature & 0xF0)>>8);
    		tempBuf[0]=((temperature & 0x0F)>>0);

    		CAN1_TxMsg(tempBuf, 2);
    	}

    	vTaskDelay(pdMS_TO_TICKS(1));
    }
}

static void MonitorTask(void *argument)
{
    while (1)
    {
    	vTaskDelay(pdMS_TO_TICKS(1000));
    	SystemMonitorTask();
    }
}

static void iwdgTask(void *argument)
{
    while (1)
    {
    	Watchdog_Refresh();

        vTaskDelay(pdMS_TO_TICKS(1));
    }
}



int main(void)
{
	//Initialization
	//SysTick_config();
	CAN1_Init();
	UART2_RxTxInit();

	Timer_Init();  //TIM2
    DS18B20_Init();
    Fan_Init();
    SystemMonitor_Init();

    DWT_CTRL |= (1<<0);

    SEGGER_SYSVIEW_Conf();
    vSetVarulMaxPRIGROUPValue();
    SEGGER_SYSVIEW_Start();

    temperatureQueue = xQueueCreate(1, sizeof(TemperatureData_t));
    if (temperatureQueue == NULL){while (1){}}

    temperatureQueue2 = xQueueCreate(1, sizeof(TemperatureData_t));
    if (temperatureQueue == NULL){while (1){}}

    BaseType_t Temp_task = xTaskCreate(
	   TemperatureTask,
	   "Temperature",
	   256,
	   NULL,
	   1,
	   &temperatureTaskHandle
   );
    configASSERT(Temp_task==pdPASS);

    BaseType_t Cooler_task = xTaskCreate(
	   CoolerTask,
	   "Cooler",
	   256,
	   NULL,
	   1,
	   &coolerTaskHandle
   );

   configASSERT(Cooler_task==pdPASS);

   BaseType_t CAN_task = xTaskCreate(
  	   CAN_Task,
  	   "CAN_Tx",
  	   256,
  	   NULL,
  	   1,
  	   &CAN_Tx_TaskHandle
     );

   configASSERT(CAN_task==pdPASS);

   BaseType_t SystemMonitor = xTaskCreate(
	   MonitorTask,
	   "Monitor",
	   256,
	   NULL,
	   2,
	   &MonitorTaskHandle
  );

  configASSERT(SystemMonitor==pdPASS);

  BaseType_t IWDG_Task = xTaskCreate(
	   iwdgTask,
	   "IWDG",
	   64,
	   NULL,
	   3,
	   &IWDG_TaskHandle
  );

  configASSERT(IWDG_Task==pdPASS);

   vTaskStartScheduler();


	while(1){

	}
}
