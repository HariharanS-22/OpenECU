################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.c \
../CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.c 

OBJS += \
./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.o \
./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.d \
./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Testing/Source/Tests/%.o CMSIS-DSP-1.17.1/Testing/Source/Tests/%.su CMSIS-DSP-1.17.1/Testing/Source/Tests/%.cyclo: ../CMSIS-DSP-1.17.1/Testing/Source/Tests/%.c CMSIS-DSP-1.17.1/Testing/Source/Tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Testing-2f-Source-2f-Tests

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Testing-2f-Source-2f-Tests:
	-$(RM) ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.cyclo ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.d ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.o ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata.su ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.cyclo ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.d ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.o ./CMSIS-DSP-1.17.1/Testing/Source/Tests/mfccdata_f16.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Testing-2f-Source-2f-Tests

