################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Module/lin.c \
../Module/sysTick.c 

OBJS += \
./Module/lin.o \
./Module/sysTick.o 

C_DEPS += \
./Module/lin.d \
./Module/sysTick.d 


# Each subdirectory must supply rules for building sources it contributes
Module/%.o Module/%.su Module/%.cyclo: ../Module/%.c Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/LIN_Driver/Module" -I"H:/OpenECU/Code/LIN_Driver/CMSIS" -I"H:/OpenECU/Code/LIN_Driver/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/LIN_Driver/CMSIS/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Module

clean-Module:
	-$(RM) ./Module/lin.cyclo ./Module/lin.d ./Module/lin.o ./Module/lin.su ./Module/sysTick.cyclo ./Module/sysTick.d ./Module/sysTick.o ./Module/sysTick.su

.PHONY: clean-Module

