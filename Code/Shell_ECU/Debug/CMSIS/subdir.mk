################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/system_stm32f1xx.c 

OBJS += \
./CMSIS/system_stm32f1xx.o 

C_DEPS += \
./CMSIS/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/%.o CMSIS/%.su CMSIS/%.cyclo: ../CMSIS/%.c CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"H:/OpenECU/Code/Shell_ECU/CMSIS" -I"H:/OpenECU/Code/Shell_ECU/Module" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-CMSIS

clean-CMSIS:
	-$(RM) ./CMSIS/system_stm32f1xx.cyclo ./CMSIS/system_stm32f1xx.d ./CMSIS/system_stm32f1xx.o ./CMSIS/system_stm32f1xx.su

.PHONY: clean-CMSIS

