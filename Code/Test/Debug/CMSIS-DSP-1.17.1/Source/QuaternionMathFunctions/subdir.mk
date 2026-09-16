################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c \
../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c 

OBJS += \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d \
./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/%.o CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/%.su CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/%.cyclo: ../CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/%.c CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-QuaternionMathFunctions

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-QuaternionMathFunctions:
	-$(RM) ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/QuaternionMathFunctions.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.su ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.cyclo ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o ./CMSIS-DSP-1.17.1/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-QuaternionMathFunctions

