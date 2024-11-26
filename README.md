# MIDINPUT: A USB-Midi signal to Nintendo Switch HID adapter
An adapter from USB-MIDI signal to HID Input for Nintendo Switch: using two boards: an STM32F3DISCOVERY and an STM32F4DISCOVERY. Little university project.

## Disclaimer
I'm not an expert in the embedded software, because of that there could be some workarounds/hacks that are absolutely not the best way to handle things: I don't even thing it's a good idea using these specific boards for this scope, due to power consumptions and interfaces, but they were the ones provided by my faculty so whatever ¯\\_(ツ)_/¯. 

## How does it work?
The input part is managed by an STM32F4DISCOVERY board: it receives through USB the USB-MIDI signal from the board and sends it directly to the other board. The USB-MIDI reception was provided thanks to the [MrBlueXav's Dekrispator project](https://github.com/MrBlueXav/Dekrispator_v2).

The output part is managed by an STM32F3DISCOVERY board: it receives the UART signals, then convert the signal into an USB Report and sends it through USB to the console, which recognizes it as an official Hori Pokkén Tournament Controller. The configuration, libraries and documentations for the Nintendo Switch HID Inputs were provided by the [soonuse stm32_joystick_for_nintendo_switch project](https://github.com/soonuse/stm32_joystick_for_nintendo_switch).

