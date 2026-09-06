################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/can.c \
../Module/ds18b20.c \
../Module/fan.c \
../Module/iwdg.c \
../Module/sysTick.c \
../Module/systemMonitor.c \
../Module/timer.c \
../Module/uart.c 

OBJS += \
./Module/can.o \
./Module/ds18b20.o \
./Module/fan.o \
./Module/iwdg.o \
./Module/sysTick.o \
./Module/systemMonitor.o \
./Module/timer.o \
./Module/uart.o 

C_DEPS += \
./Module/can.d \
./Module/ds18b20.d \
./Module/fan.d \
./Module/iwdg.d \
./Module/sysTick.d \
./Module/systemMonitor.d \
./Module/timer.d \
./Module/uart.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/FreeRTOS" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/FreeRTOS/include" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/SEGGER/OS" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/SEGGER/SEGGER" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/SEGGER/Config" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/ThirdParty/SEGGER" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/Coolant_ECU/Module" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/can.cyclo ./Module/can.d ./Module/can.o ./Module/can.su ./Module/ds18b20.cyclo ./Module/ds18b20.d ./Module/ds18b20.o ./Module/ds18b20.su ./Module/fan.cyclo ./Module/fan.d ./Module/fan.o ./Module/fan.su ./Module/iwdg.cyclo ./Module/iwdg.d ./Module/iwdg.o ./Module/iwdg.su ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su ./Module/systemMonitor.cyclo ./Module/systemMonitor.d ./Module/systemMonitor.o ./Module/systemMonitor.su ./Module/timer.cyclo ./Module/timer.d ./Module/timer.o ./Module/timer.su ./Module/uart.cyclo ./Module/uart.d ./Module/uart.o ./Module/uart.su

.PHONY: clean-Module

