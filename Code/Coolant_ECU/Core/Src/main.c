
#include "main.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include "sysTick.h"
#include "can.h"
#include "ds18b20.h"
#include "timer.h"
#include "fan.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

uint16_t receivedID;
uint8_t receivedDLC;
uint16_t receivedTimeStamp;
uint64_t receivedMsg;

uint8_t flag_msgReceived;

typedef struct
{
    int16_t temperature_x100;

} TemperatureData_t;

static QueueHandle_t temperatureQueue;

static TaskHandle_t temperatureTaskHandle;
static TaskHandle_t coolerTaskHandle;

static void TemperatureTask(void *argument)
{
    TemperatureData_t temperatureData;
    (void)argument;

    while (1)
    {
        temperatureData.temperature_x100 = DS18B20_ReadTemperature();

        xQueueOverwrite( temperatureQueue, &temperatureData);
        vTaskDelay(pdMS_TO_TICKS(1000));
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

            if (temperature == INT16_MIN)
            {
                Fan_Stop();
                fanSpeed = 0U;
                printf("DS18B20 ERROR\r\n");
                continue;
            }

            printf("T : %d.%02d C\r\n", temperature / 100, temperature % 100);

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

            printf("Fan : %d %%\r\n", fanSpeed);
        }
    }
}


int main(void)
{
	//Initialization
	//SysTick_config();
	CAN1_Init();

	Timer_Init();  //TIM2
    DS18B20_Init();
    Fan_Init();

	//CAN1_LoopBack();
    temperatureQueue = xQueueCreate(1, sizeof(TemperatureData_t));
    if (temperatureQueue == NULL){
		while (1){}
    }
    BaseType_t Temp_task = xTaskCreate(
	   TemperatureTask,
	   "Temperature",
	   256,
	   NULL,
	   2,
	   &temperatureTaskHandle
   );
    configASSERT(Temp_task==pdPASS);

    BaseType_t Cooler_task = xTaskCreate(
	   CoolerTask,
	   "Cooler",
	   256,
	   NULL,
	   2,
	   &coolerTaskHandle
   );

   configASSERT(Cooler_task==pdPASS);
   vTaskStartScheduler();


	while(1){

	}
}
