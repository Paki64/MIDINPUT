/*
 * midisw.c
 *
 *  Created on: Oct 26, 2024
 *      Author: pasqu
 */
#include "midisw.h"

#define BUTTON_CTL 0
#define MOD_CTL 1
#define LX_CTL 2
#define LY_CTL 3
#define RX_CTL 4
#define RY_CTL 5
#define HAT_CTL 6

#define MODE0 0
#define MODE1 1
#define MODE2 2
#define MODE3 3

serial_midi data;
static int pressed;
static int mode = MODE0;
serial_midi data;
extern USB_JoystickReport_Input joystick_input;

void serial_manager(uint8_t* rx_buffer){
	// Salvataggio dei dati
	data.cable_number = rx_buffer[0] & 0xF0;
	data.index_number = rx_buffer[0] & 0x0F;
	// Channel_0
	data.midi0.note = rx_buffer[2];
	data.midi0.speed = rx_buffer[3];

	// PRESSIONE O RILASCIO?
	if(data.index_number == MIDI_PRESSED)
		pressed = 1;
	else if(data.index_number == MIDI_RELEASED)
		pressed = 0;
	else if(data.index_number == MIDI_RESET){
	  // Durante la riconnessione si avrà un index F, ci conviene risettare
	  ResetReport(&joystick_input);
	  SendReport(&hUsbDeviceFS, &joystick_input);
	  return;
	}
	else return;

	// QUALE PULSANTE?
	int pos = data.midi0.note%48;
	int type = (hid_map[pos][mode])/100;

	switch (type){
	// PULSANTE
		case BUTTON_CTL:
			joystick_input.Button =
				(pressed == 1 && !(joystick_input.Button & (1 << hid_map[pos][mode]))) ?
				(joystick_input.Button | (1 << hid_map[pos][mode])) : (joystick_input.Button & ~(1 << hid_map[pos][mode]));
			break;
	// MODE
		case MOD_CTL:
			if(pressed) switch(hid_map[pos][mode]){
				case MODE_1:
					mode = MODE1;
					break;
				case MODE_2:
					mode = MODE2;
					break;
				case MODE_3:
					mode = MODE3;
					break;
				default:
					mode = MODE0;
					break;
			}
			break;
	// L-STICK(X)
		case LX_CTL:
			if(hid_map[pos][mode] == LX_MAX){
				if(pressed){
					if(joystick_input.LX==STICK_MIN)
						joystick_input.LX=STICK_CENTER;
					else if(joystick_input.LX==STICK_CENTER)
						joystick_input.LX=STICK_MAX;
					}
				else{
					if(joystick_input.LX==STICK_MAX)
						joystick_input.LX=STICK_CENTER;
					else if(joystick_input.LX==STICK_CENTER)
						joystick_input.LX=STICK_MIN;
					}
				}
			if(hid_map[pos][mode] == LX_MIN){
				if(pressed){
					if(joystick_input.LX==STICK_MAX)
						joystick_input.LX=STICK_CENTER;
					else if(joystick_input.LX==STICK_CENTER)
						joystick_input.LX=STICK_MIN;
					}
				else{
					if(joystick_input.LX==STICK_MIN)
						joystick_input.LX=STICK_CENTER;
					else if(joystick_input.LX==STICK_CENTER)
						joystick_input.LX=STICK_MAX;
					}
				}
			break;
	// L-STICK(Y)
		case LY_CTL:
			if(hid_map[pos][mode] == LY_MAX){
				if(pressed){
					if(joystick_input.LY==STICK_MIN)
						joystick_input.LY=STICK_CENTER;
					else if(joystick_input.LY==STICK_CENTER)
						joystick_input.LY=STICK_MAX;
					}
				else{
					if(joystick_input.LY==STICK_MAX)
						joystick_input.LY=STICK_CENTER;
					else if(joystick_input.LY==STICK_CENTER)
						joystick_input.LY=STICK_MIN;
					}
				}
			if(hid_map[pos][mode] == LY_MIN){
				if(pressed){
					if(joystick_input.LY==STICK_MAX)
						joystick_input.LY=STICK_CENTER;
					else if(joystick_input.LY==STICK_CENTER)
						joystick_input.LY=STICK_MIN;
					}
				else{
					if(joystick_input.LY==STICK_MIN)
						joystick_input.LY=STICK_CENTER;
					else if(joystick_input.LY==STICK_CENTER)
						joystick_input.LY=STICK_MAX;
					}
				}
			break;
	// L-STICK(X)
		case RX_CTL:
			if(hid_map[pos][mode] == RX_MAX){
				if(pressed){
					if(joystick_input.RX==STICK_MIN)
						joystick_input.RX=STICK_CENTER;
					else if(joystick_input.RX==STICK_CENTER)
						joystick_input.RX=STICK_MAX;
					}
				else{
					if(joystick_input.RX==STICK_MAX)
						joystick_input.RX=STICK_CENTER;
					else if(joystick_input.RX==STICK_CENTER)
						joystick_input.RX=STICK_MIN;
					}
				}
			if(hid_map[pos][mode] == RX_MIN){
				if(pressed){
					if(joystick_input.RX==STICK_MAX)
						joystick_input.RX=STICK_CENTER;
					else if(joystick_input.RX==STICK_CENTER)
						joystick_input.RX=STICK_MIN;
					}
				else{
					if(joystick_input.RX==STICK_MIN)
						joystick_input.RX=STICK_CENTER;
					else if(joystick_input.RX==STICK_CENTER)
						joystick_input.RX=STICK_MAX;
					}
				}
			break;
	// L-STICK(Y)
		case RY_CTL:
			if(hid_map[pos][mode] == RY_MAX){
				if(pressed){
					if(joystick_input.RY==STICK_MIN)
						joystick_input.RY=STICK_CENTER;
					else if(joystick_input.RY==STICK_CENTER)
						joystick_input.RY=STICK_MAX;
					}
				else{
					if(joystick_input.RY==STICK_MAX)
						joystick_input.RY=STICK_CENTER;
					else if(joystick_input.RY==STICK_CENTER)
						joystick_input.RY=STICK_MIN;
					}
				}
			if(hid_map[pos][mode] == RY_MIN){
				if(pressed){
					if(joystick_input.RY==STICK_MAX)
						joystick_input.RY=STICK_CENTER;
					else if(joystick_input.RY==STICK_CENTER)
						joystick_input.RY=STICK_MIN;
					}
				else{
					if(joystick_input.RY==STICK_MIN)
						joystick_input.RY=STICK_CENTER;
					else if(joystick_input.RY==STICK_CENTER)
						joystick_input.RY=STICK_MAX;
					}
				}
	// HAT
		case HAT_CTL:
			switch(joystick_input.HAT){
				case HAT_TOP:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(!pressed) joystick_input.HAT=HAT_CENTER;
							break;
						case HT_LFT:
							if(pressed) joystick_input.HAT=HAT_TOP_LEFT;
							else joystick_input.HAT=HAT_TOP_RIGHT;
							break;
						case HT_RGT:
							if(pressed) joystick_input.HAT=HAT_TOP_RIGHT;
							else joystick_input.HAT=HAT_TOP_LEFT;
							break;
						case HT_DWN:
							if(pressed) joystick_input.HAT=HAT_CENTER;
							break;
					}
					break;
				case HAT_TOP_RIGHT:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(!pressed) joystick_input.HAT=HAT_RIGHT;
							break;
						case HT_LFT:
							if(pressed) joystick_input.HAT=HAT_TOP;
							break;
						case HT_RGT:
							if(!pressed) joystick_input.HAT=HAT_TOP;
							break;
						case HT_DWN:
							if(pressed) joystick_input.HAT=HAT_RIGHT;
							break;
					}
					break;
				case HAT_RIGHT:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(pressed) joystick_input.HAT=HAT_TOP_RIGHT;
							else joystick_input.HAT=HAT_BOTTOM_RIGHT;
							break;
						case HT_LFT:
							if(pressed) joystick_input.HAT=HAT_CENTER;
							break;
						case HT_RGT:
							if(!pressed) joystick_input.HAT=HAT_CENTER;
							break;
						case HT_DWN:
							if(pressed) joystick_input.HAT=HAT_BOTTOM_RIGHT;
							else joystick_input.HAT=HAT_TOP_RIGHT;
							break;
					}
					break;
				case HAT_BOTTOM_RIGHT:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(pressed) joystick_input.HAT=HAT_RIGHT;
							break;
						case HT_LFT:
							if(pressed) joystick_input.HAT=HAT_BOTTOM;
							break;
						case HT_RGT:
							if(!pressed) joystick_input.HAT=HAT_BOTTOM;
							break;
						case HT_DWN:
							if(!pressed) joystick_input.HAT=HAT_RIGHT;
							break;
					}
					break;
				case HAT_BOTTOM:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(pressed) joystick_input.HAT=HAT_CENTER;
							break;
						case HT_LFT:
							if(pressed) joystick_input.HAT=HAT_BOTTOM_LEFT;
							else joystick_input.HAT=HAT_BOTTOM_RIGHT;
							break;
						case HT_RGT:
							if(pressed) joystick_input.HAT=HAT_BOTTOM_RIGHT;
							else joystick_input.HAT=HAT_BOTTOM_LEFT;
							break;
						case HT_DWN:
							if(!pressed) joystick_input.HAT=HAT_CENTER;
							break;
					}
					break;
				case HAT_BOTTOM_LEFT:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(pressed) joystick_input.HAT=HAT_LEFT;
							break;
						case HT_LFT:
							if(!pressed) joystick_input.HAT=HAT_BOTTOM;
							break;
						case HT_RGT:
							if(pressed) joystick_input.HAT=HAT_BOTTOM;
							break;
						case HT_DWN:
							if(!pressed) joystick_input.HAT=HAT_LEFT;
							break;
					}
					break;
				case HAT_LEFT:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(pressed) joystick_input.HAT=HAT_TOP_LEFT;
							else joystick_input.HAT=HAT_BOTTOM_LEFT;
							break;
						case HT_LFT:
							if(!pressed) joystick_input.HAT=HAT_CENTER;
							break;
						case HT_RGT:
							if(pressed) joystick_input.HAT=HAT_CENTER;
							break;
						case HT_DWN:
							if(pressed) joystick_input.HAT=HAT_BOTTOM_LEFT;
							else joystick_input.HAT=HAT_TOP_LEFT;
							break;
					}
					break;
				case HAT_TOP_LEFT:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(!pressed) joystick_input.HAT=HAT_LEFT;
							break;
						case HT_LFT:
							if(!pressed) joystick_input.HAT=HAT_TOP;
							break;
						case HT_RGT:
							if(pressed) joystick_input.HAT=HAT_TOP;
							break;
						case HT_DWN:
							if(pressed) joystick_input.HAT=HAT_LEFT;
							break;
					}
					break;
				case HAT_CENTER:
					switch(hid_map[pos][mode]){
						case HT_TOP:
							if(pressed) joystick_input.HAT=HAT_TOP;
							else joystick_input.HAT=HAT_BOTTOM;
							break;
						case HT_LFT:
							if(pressed) joystick_input.HAT=HAT_LEFT;
							else joystick_input.HAT=HAT_RIGHT;
							break;
						case HT_RGT:
							if(pressed) joystick_input.HAT=HAT_RIGHT;
							else joystick_input.HAT=HAT_LEFT;
							break;
						case HT_DWN:
							if(pressed) joystick_input.HAT=HAT_BOTTOM;
							else joystick_input.HAT=HAT_TOP;
							break;
					}
					break;
				}
				break;

		default:
			return;
	}

	/*
	if(hid_map[pos][0] == SWITCH_A){
		// Se è premuto ma non già premuto devo premere
		joystick_input.Button =
				(pressed == 1 && !(joystick_input.Button & (1 << SWITCH_A))) ?
						(joystick_input.Button | (1 << SWITCH_A)) :
						(joystick_input.Button & ~(1 << SWITCH_A));
		// Se è rilasciato devo rilasciare
		// Altrimenti ignoro
	}
	if(hid_map[pos][0] == SWITCH_X){
		// Se è premuto ma non già premuto devo premere
		joystick_input.Button =
				(pressed == 1 && !(joystick_input.Button & (1 << SWITCH_X))) ?
						(joystick_input.Button | (1 << SWITCH_X)) :
						(joystick_input.Button & ~(1 << SWITCH_X));
		// Se è rilasciato devo rilasciare
		// Altrimenti ignoro
	}*/

	// INVIO REPORT
	//SendReport(&hUsbDeviceFS, &joystick_input);
	HoldReport(&hUsbDeviceFS, &joystick_input, 1);
}
