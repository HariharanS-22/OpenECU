################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/adxl345.c \
../Module/can.c \
../Module/fft.c \
../Module/hallEffect_a3144.c \
../Module/iwdg.c \
../Module/sysTick.c \
../Module/systemMonitor.c \
../Module/uart.c \
../Module/vibration.c 

OBJS += \
./Module/adxl345.o \
./Module/can.o \
./Module/fft.o \
./Module/hallEffect_a3144.o \
./Module/iwdg.o \
./Module/sysTick.o \
./Module/systemMonitor.o \
./Module/uart.o \
./Module/vibration.o 

C_DEPS += \
./Module/adxl345.d \
./Module/can.d \
./Module/fft.d \
./Module/hallEffect_a3144.d \
./Module/iwdg.d \
./Module/sysTick.d \
./Module/systemMonitor.d \
./Module/uart.d \
./Module/vibration.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/FreeRTOS" -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/FreeRTOS/include" -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER/OS" -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER/SEGGER" -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER/Config" -I"H:/OpenECU/Code/VibrationMonitor_ECU/ThirdParty/SEGGER" -I"H:/OpenECU/Code/VibrationMonitor_ECU/Module" -I"H:/OpenECU/Code/VibrationMonitor_ECU/CMSIS_DSP/Include" -I"H:/OpenECU/Code/VibrationMonitor_ECU/CMSIS_DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/adxl345.cyclo ./Module/adxl345.d ./Module/adxl345.o ./Module/adxl345.su ./Module/can.cyclo ./Module/can.d ./Module/can.o ./Module/can.su ./Module/fft.cyclo ./Module/fft.d ./Module/fft.o ./Module/fft.su ./Module/hallEffect_a3144.cyclo ./Module/hallEffect_a3144.d ./Module/hallEffect_a3144.o ./Module/hallEffect_a3144.su ./Module/iwdg.cyclo ./Module/iwdg.d ./Module/iwdg.o ./Module/iwdg.su ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su ./Module/systemMonitor.cyclo ./Module/systemMonitor.d ./Module/systemMonitor.o ./Module/systemMonitor.su ./Module/uart.cyclo ./Module/uart.d ./Module/uart.o ./Module/uart.su ./Module/vibration.cyclo ./Module/vibration.d ./Module/vibration.o ./Module/vibration.su

.PHONY: clean-Module

