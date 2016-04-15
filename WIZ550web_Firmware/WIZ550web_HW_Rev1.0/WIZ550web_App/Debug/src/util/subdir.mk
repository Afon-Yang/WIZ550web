################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/util/boardutil.c \
../src/util/diskio.c \
../src/util/mmc_sd.c \
../src/util/spi.c 

OBJS += \
./src/util/boardutil.o \
./src/util/diskio.o \
./src/util/mmc_sd.o \
./src/util/spi.o 

C_DEPS += \
./src/util/boardutil.d \
./src/util/diskio.d \
./src/util/mmc_sd.d \
./src/util/spi.d 


# Each subdirectory must supply rules for building sources it contributes
src/util/%.o: ../src/util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DTRACE -DOS_USE_TRACE_ITM -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=12000000 -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f1-stdperiph" -I../src -I../src/ATcmd -I../src/ATcmd/library -I../src/callback -I../src/Configuration -I../src/Ethernet -I../src/Ethernet/W5500 -I../src/Internet/DHCP -I../src/Internet/httpServer -I../src/netutil -I../src/PlatformHandler -I../src/PlatformHandler/FatFs -I../src/util -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


