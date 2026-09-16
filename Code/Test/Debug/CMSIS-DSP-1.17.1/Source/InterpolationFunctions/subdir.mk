################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.c \
../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.c 

OBJS += \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.o \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.o 

C_DEPS += \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.d \
./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP-1.17.1/Source/InterpolationFunctions/%.o CMSIS-DSP-1.17.1/Source/InterpolationFunctions/%.su CMSIS-DSP-1.17.1/Source/InterpolationFunctions/%.cyclo: ../CMSIS-DSP-1.17.1/Source/InterpolationFunctions/%.c CMSIS-DSP-1.17.1/Source/InterpolationFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -c -I../Inc -I"H:/OpenECU/Code/Test/Module" -I"H:/OpenECU/Code/Test/CMSIS" -I"H:/OpenECU/Code/Test/CMSIS/Device/ST/STM32F4xx/Include" -I"H:/OpenECU/Code/Test/CMSIS/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/Include/dsp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/dsppp" -I"H:/OpenECU/Code/Test/CMSIS-DSP-1.17.1/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-InterpolationFunctions

clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-InterpolationFunctions:
	-$(RM) ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctions.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/InterpolationFunctionsF16.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f16.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_f32.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q15.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q31.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_bilinear_interp_q7.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f16.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_f32.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q15.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q31.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_linear_interp_q7.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_f32.su ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.cyclo ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.d ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.o ./CMSIS-DSP-1.17.1/Source/InterpolationFunctions/arm_spline_interp_init_f32.su

.PHONY: clean-CMSIS-2d-DSP-2d-1-2e-17-2e-1-2f-Source-2f-InterpolationFunctions

