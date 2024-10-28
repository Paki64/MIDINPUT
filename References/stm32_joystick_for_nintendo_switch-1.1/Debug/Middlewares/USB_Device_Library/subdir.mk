################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./Middlewares/USB_Device_Library/usbd_core.o \
./Middlewares/USB_Device_Library/usbd_ctlreq.o \
./Middlewares/USB_Device_Library/usbd_hid.o \
./Middlewares/USB_Device_Library/usbd_ioreq.o 

C_DEPS += \
./Middlewares/USB_Device_Library/usbd_core.d \
./Middlewares/USB_Device_Library/usbd_ctlreq.d \
./Middlewares/USB_Device_Library/usbd_hid.d \
./Middlewares/USB_Device_Library/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/USB_Device_Library/usbd_core.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_core.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_ctlreq.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_ctlreq.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_hid.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Middlewares/ST/STM32_USB_Device_Library/Class/HID/Src/usbd_hid.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_hid.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_ioreq.o: C:/Users/pasqu/OneDrive\ -\ Università\ di\ Napoli\ Federico\ II/Documenti/Università/Architettura\ e\ Progetto\ dei\ Calcolatori/Progetto/Reference/Output/stm32_joystick_for_nintendo_switch-1.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../../Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc -I../../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc -I../../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_ioreq.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middlewares-2f-USB_Device_Library

clean-Middlewares-2f-USB_Device_Library:
	-$(RM) ./Middlewares/USB_Device_Library/usbd_core.cyclo ./Middlewares/USB_Device_Library/usbd_core.d ./Middlewares/USB_Device_Library/usbd_core.o ./Middlewares/USB_Device_Library/usbd_core.su ./Middlewares/USB_Device_Library/usbd_ctlreq.cyclo ./Middlewares/USB_Device_Library/usbd_ctlreq.d ./Middlewares/USB_Device_Library/usbd_ctlreq.o ./Middlewares/USB_Device_Library/usbd_ctlreq.su ./Middlewares/USB_Device_Library/usbd_hid.cyclo ./Middlewares/USB_Device_Library/usbd_hid.d ./Middlewares/USB_Device_Library/usbd_hid.o ./Middlewares/USB_Device_Library/usbd_hid.su ./Middlewares/USB_Device_Library/usbd_ioreq.cyclo ./Middlewares/USB_Device_Library/usbd_ioreq.d ./Middlewares/USB_Device_Library/usbd_ioreq.o ./Middlewares/USB_Device_Library/usbd_ioreq.su

.PHONY: clean-Middlewares-2f-USB_Device_Library

