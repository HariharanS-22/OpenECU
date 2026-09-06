################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/syscalls.c 

OBJS += \
./Src/main.o \
./Src/syscalls.o 

C_DEPS += \
./Src/main.d \
./Src/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/ECU_CoolantSystem/Module" -I"H:/OpenECU/Code/ECU_CoolantSystem/CMSIS" -I"H:/OpenECU/Code/ECU_CoolantSystem/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/ECU_CoolantSystem/CMSIS/Include" -I"H:/OpenECU/Code/ECU_CoolantSystem/Src" -I"H:/OpenECU/Code/ECU_CoolantSystem/ThirdParty/FreeRTOS/include" -I"H:/OpenECU/Code/ECU_CoolantSystem/ThirdParty/SEGGER/SEGGER" -I"H:/OpenECU/Code/ECU_CoolantSystem/ThirdParty/SEGGER/OS" -I"H:/OpenECU/Code/ECU_CoolantSystem/ThirdParty/SEGGER/Config" -I"H:/OpenECU/Code/ECU_CoolantSystem/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su

.PHONY: clean-Src

