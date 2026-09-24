################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/can.c \
../Module/clock.c \
../Module/sysTick.c \
../Module/uart.c 

OBJS += \
./Module/can.o \
./Module/clock.o \
./Module/sysTick.o \
./Module/uart.o 

C_DEPS += \
./Module/can.d \
./Module/clock.d \
./Module/sysTick.d \
./Module/uart.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"H:/OpenECU/Code/Shell_ECU/CMSIS" -I"H:/OpenECU/Code/Shell_ECU/Module" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/can.cyclo ./Module/can.d ./Module/can.o ./Module/can.su ./Module/clock.cyclo ./Module/clock.d ./Module/clock.o ./Module/clock.su ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su ./Module/uart.cyclo ./Module/uart.d ./Module/uart.o ./Module/uart.su

.PHONY: clean-Module

