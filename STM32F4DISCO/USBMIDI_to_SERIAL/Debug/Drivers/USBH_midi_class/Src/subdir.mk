################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USBH_midi_class/Src/usbh_MIDI.c 

OBJS += \
./Drivers/USBH_midi_class/Src/usbh_MIDI.o 

C_DEPS += \
./Drivers/USBH_midi_class/Src/usbh_MIDI.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USBH_midi_class/Src/%.o Drivers/USBH_midi_class/Src/%.su Drivers/USBH_midi_class/Src/%.cyclo: ../Drivers/USBH_midi_class/Src/%.c Drivers/USBH_midi_class/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DDEBUG -DSTM32F407xx -c -I../USB_HOST/App -I../Drivers/CMSIS/Include -I../Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I"C:/Users/pasqu/Documents/Progetto STM/STM32F4DISCO/USBMIDI_to_SERIAL/Drivers/USBH_midi_class/Inc" -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-USBH_midi_class-2f-Src

clean-Drivers-2f-USBH_midi_class-2f-Src:
	-$(RM) ./Drivers/USBH_midi_class/Src/usbh_MIDI.cyclo ./Drivers/USBH_midi_class/Src/usbh_MIDI.d ./Drivers/USBH_midi_class/Src/usbh_MIDI.o ./Drivers/USBH_midi_class/Src/usbh_MIDI.su

.PHONY: clean-Drivers-2f-USBH_midi_class-2f-Src

