################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f446retx.s 

OBJS += \
./Startup/startup_stm32f446retx.o 

S_DEPS += \
./Startup/startup_stm32f446retx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"H:/OpenECU/Code/ECU_VibrationMonitor/Module" -I"H:/OpenECU/Code/FreeRTOS/FreeRTOS-Kernel/include" -I"H:/OpenECU/Code/FreeRTOS/" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS" -I"H:/OpenECU/Code/ECU_VibrationMonitor/Inc" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS/Include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/Src" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/FreeRTOS/include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/SEGGER/SEGGER" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/SEGGER/OS" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/SEGGER/Config" -I"H:/OpenECU/Code/ECU_VibrationMonitor/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/ECU_VibrationMonitor/CMSIS-DSP-1.17.1/Include/dsp" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32f446retx.d ./Startup/startup_stm32f446retx.o

.PHONY: clean-Startup

