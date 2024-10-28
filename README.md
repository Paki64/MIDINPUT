# STM32 Midi to NSW
 An adapter from USB-MIDI signal to HID Input for Nintendo Switch.



The output part is managed by an STM32F3DISCOVERY board: it receives the UART signals, then convert the signal into an USB Report and sends it through USB. The configuration, libraries and documentations for the Nintendo Switch HID Inputs were provided by the [soonuse stm32_joystick_for_nintendo_switch project](https://github.com/soonuse/stm32_joystick_for_nintendo_switch).
