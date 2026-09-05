################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/can.c \
../Module/ds18b20.c \
../Module/fan.c \
../Module/sysTick.c \
../Module/timer.c 

OBJS += \
./Module/can.o \
./Module/ds18b20.o \
./Module/fan.o \
./Module/sysTick.o \
./Module/timer.o 

C_DEPS += \
./Module/can.d \
./Module/ds18b20.d \
./Module/fan.d \
./Module/sysTick.d \
./Module/timer.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/ECU_CoolantSystem/Module" -I"H:/OpenECU/Code/ECU_CoolantSystem/CMSIS" -I"H:/OpenECU/Code/ECU_CoolantSystem/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/ECU_CoolantSystem/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/can.cyclo ./Module/can.d ./Module/can.o ./Module/can.su ./Module/ds18b20.cyclo ./Module/ds18b20.d ./Module/ds18b20.o ./Module/ds18b20.su ./Module/fan.cyclo ./Module/fan.d ./Module/fan.o ./Module/fan.su ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su ./Module/timer.cyclo ./Module/timer.d ./Module/timer.o ./Module/timer.su

.PHONY: clean-Module

