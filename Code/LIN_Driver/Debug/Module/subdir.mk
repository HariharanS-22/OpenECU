################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/sysTick.c \
../Module/uart_LIN.c 

OBJS += \
./Module/sysTick.o \
./Module/uart_LIN.o 

C_DEPS += \
./Module/sysTick.d \
./Module/uart_LIN.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/LIN_Driver/Module" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/LIN_Driver/CMSIS" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/LIN_Driver/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Jagakishan/Mini-AUTOSAR/OpenECU/Code/LIN_Driver/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su ./Module/uart_LIN.cyclo ./Module/uart_LIN.d ./Module/uart_LIN.o ./Module/uart_LIN.su

.PHONY: clean-Module

