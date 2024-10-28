################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/stm32f1xx_hal_msp.c \
../Src/stm32f1xx_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c \
../Src/usb_device.c \
../Src/usbd_conf.c \
../Src/usbd_desc.c 

OBJS += \
./Application/User/main.o \
./Application/User/stm32f1xx_hal_msp.o \
./Application/User/stm32f1xx_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/usb_device.o \
./Application/User/usbd_conf.o \
./Application/User/usbd_desc.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/stm32f1xx_hal_msp.d \
./Application/User/stm32f1xx_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d \
./Application/User/usb_device.d \
./Application/User/usbd_conf.d \
./Application/User/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32f1xx_hal_msp.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Src/stm32f1xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/stm32f1xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32f1xx_it.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Src/stm32f1xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/stm32f1xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/%.o Application/User/%.su Application/User/%.cyclo: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/usb_device.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Src/usb_device.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/usb_device.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/usbd_conf.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Src/usbd_conf.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/usbd_conf.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/usbd_desc.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Src/usbd_desc.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/usbd_desc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32f1xx_hal_msp.cyclo ./Application/User/stm32f1xx_hal_msp.d ./Application/User/stm32f1xx_hal_msp.o ./Application/User/stm32f1xx_hal_msp.su ./Application/User/stm32f1xx_it.cyclo ./Application/User/stm32f1xx_it.d ./Application/User/stm32f1xx_it.o ./Application/User/stm32f1xx_it.su ./Application/User/syscalls.cyclo ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/syscalls.su ./Application/User/sysmem.cyclo ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/sysmem.su ./Application/User/usb_device.cyclo ./Application/User/usb_device.d ./Application/User/usb_device.o ./Application/User/usb_device.su ./Application/User/usbd_conf.cyclo ./Application/User/usbd_conf.d ./Application/User/usbd_conf.o ./Application/User/usbd_conf.su ./Application/User/usbd_desc.cyclo ./Application/User/usbd_desc.d ./Application/User/usbd_desc.o ./Application/User/usbd_desc.su

.PHONY: clean-Application-2f-User

