################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.c \
../CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.c 

OBJS += \
./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.o \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.d \
./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Source/CommonTables/%.o CMSIS-DSP-1.17.1/Source/CommonTables/%.su CMSIS-DSP-1.17.1/Source/CommonTables/%.cyclo: ../CMSIS-DSP-1.17.1/Source/CommonTables/%.c CMSIS-DSP-1.17.1/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-CommonTables

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-CommonTables:
	-$(RM) ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.d ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.o ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTables.su ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.d ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.o ./CMSIS-DSP-1.17.1/Source/CommonTables/CommonTablesF16.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_common_tables_f16.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_const_structs_f16.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_mve_tables_f16.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables.su ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.cyclo ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.d ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.o ./CMSIS-DSP-1.17.1/Source/CommonTables/arm_neon_tables_f16.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-CommonTables

