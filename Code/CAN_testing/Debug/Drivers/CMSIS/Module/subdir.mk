################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Module/can.c 

OBJS += \
./Drivers/CMSIS/Module/can.o 

C_DEPS += \
./Drivers/CMSIS/Module/can.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Module/%.o Drivers/CMSIS/Module/%.su Drivers/CMSIS/Module/%.cyclo: ../Drivers/CMSIS/Module/%.c Drivers/CMSIS/Module/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"H:/OpenECU/Code/CAN_testing/Module" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Module

clean-Drivers-2f-CMSIS-2f-Module:
	-$(RM) ./Drivers/CMSIS/Module/can.cyclo ./Drivers/CMSIS/Module/can.d ./Drivers/CMSIS/Module/can.o ./Drivers/CMSIS/Module/can.su

.PHONY: clean-Drivers-2f-CMSIS-2f-Module

