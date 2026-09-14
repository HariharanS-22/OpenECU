################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/adxl345.c \
../Module/can.c \
../Module/sysTick.c \
../Module/vibration.c 

OBJS += \
./Module/adxl345.o \
./Module/can.o \
./Module/sysTick.o \
./Module/vibration.o 

C_DEPS += \
./Module/adxl345.d \
./Module/can.d \
./Module/sysTick.d \
./Module/vibration.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/ECU_VibrationMonitor/Module" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS/Include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/Src" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/FreeRTOS/include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/SEGGER/SEGGER" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/SEGGER/OS" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/SEGGER/Config" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS-DSP-1.17.1/Include/dsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/adxl345.cyclo ./Module/adxl345.d ./Module/adxl345.o ./Module/adxl345.su ./Module/can.cyclo ./Module/can.d ./Module/can.o ./Module/can.su ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su ./Module/vibration.cyclo ./Module/vibration.d ./Module/vibration.o ./Module/vibration.su

.PHONY: clean-Module

