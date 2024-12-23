/*
 * midisw.h
 *
 *  Created on: Oct 26, 2024
 *      Author: pasqu
 */

#ifndef INC_MIDISW_H_
#define INC_MIDISW_H_

#include "ns_joystick.h"

#define MIDI_PRESSED 9
#define MIDI_RELEASED 8
#define MIDI_RESET 15

#define MODE_0 100
#define MODE_1 101
#define MODE_2 102
#define MODE_3 103
#define LX_MAX 200
#define LX_MIN 201
#define LY_MAX 300
#define LY_MIN 301
#define RX_MAX 400
#define RX_MIN 401
#define RY_MAX 500
#define RY_MIN 501
#define HT_TOP 601
#define HT_LFT 602
#define HT_RGT 603
#define HT_DWN 604
#define NOT_USED 700

// STRUTTURA MIDI - IL CODICE E' CONCEPITO PER UN SOLO CANALE MA PUO' ESSERE ESPANSO
// Reference: https://www.usb.org/sites/default/files/midi10.pdf
typedef struct{
  uint8_t note;			// Nota premuta
  uint8_t speed;		// Velocità di pressione: non utilizzato al momento.
} midi_sig;
typedef struct {
  int cable_number; // Codice dell'endpoint connesso: sarà sempre 0 in questo caso
  int index_number; // Codice azione (es. 8=Note_off e 9=Note_on)
  midi_sig midi0; 		// Data Midi su canale MIDI 0
  midi_sig midi1;		// Data Midi su canale MIDI 1: non utilizzato.
  midi_sig midi2;		// Data Midi su canale MIDI 2: non utilizzato.
} serial_midi;

static int hid_map[25][4] = {
		{LX_MIN, 		RX_MIN, 		HT_LFT, 		LX_MIN			}, //  0-48
		{MODE_0, 		MODE_0, 		MODE_0, 		MODE_0			}, //  1-49
		{LY_MIN, 		RY_MIN, 		HT_TOP, 		LY_MIN			}, //  2-50
		{MODE_1, 		MODE_1, 		MODE_1, 		MODE_1			}, //  3-51
		{LY_MAX, 		RY_MAX, 		HT_DWN, 		LY_MAX			}, //  4-52
		{LX_MAX, 		RX_MAX, 		HT_RGT, 		LX_MAX			}, //  5-53
		{MODE_2, 		MODE_2, 		MODE_2, 		MODE_2			}, //  6-54
		{SWITCH_MINUS, 	SWITCH_MINUS, 	SWITCH_MINUS, 	SWITCH_MINUS	}, //  7-55
		{MODE_3, 		MODE_3, 		MODE_3, 		MODE_3			}, //  8-56
		{SWITCH_PLUS, 	SWITCH_PLUS, 	SWITCH_PLUS, 	SWITCH_PLUS		}, //  9-57
		{NOT_USED, 		NOT_USED, 		NOT_USED, 		NOT_USED		}, // 10-58
		{SWITCH_HOME, 	SWITCH_HOME, 	SWITCH_HOME, 	SWITCH_HOME		}, // 11-59
		{SWITCH_Y, 		SWITCH_Y, 		SWITCH_Y, 		RX_MIN			}, // 12-60
		{NOT_USED, 		NOT_USED, 		NOT_USED, 		NOT_USED		}, // 13-61
		{SWITCH_B, 		SWITCH_B, 		SWITCH_B, 		RY_MIN			}, // 14-62
		{NOT_USED, 		NOT_USED, 		NOT_USED, 		NOT_USED		}, // 15-63
		{SWITCH_A, 		SWITCH_A, 		SWITCH_A, 		RY_MAX			}, // 16-64
		{SWITCH_X, 		SWITCH_X, 		SWITCH_X, 		RX_MAX			}, // 17-65
		{SWITCH_LCLICK, SWITCH_LCLICK, 	SWITCH_LCLICK, 	SWITCH_LCLICK	}, // 18-66
		{SWITCH_L, 		SWITCH_L, 		SWITCH_L, 		SWITCH_L		}, // 19-67
		{SWITCH_RCLICK, SWITCH_RCLICK, 	SWITCH_RCLICK, 	SWITCH_RCLICK	}, // 20-68
		{SWITCH_R, 		SWITCH_R, 		SWITCH_R, 		SWITCH_R		}, // 21-69
		{SWITCH_CAPTURE,SWITCH_CAPTURE, SWITCH_CAPTURE, SWITCH_CAPTURE	}, // 22-70
		{SWITCH_ZL, 	SWITCH_ZL, 		SWITCH_ZL, 		SWITCH_ZL		}, // 23-71
		{SWITCH_ZR, 	SWITCH_ZR, 		SWITCH_ZR, 		SWITCH_ZR		}  // 24-72
	};

void serial_manager(uint8_t*);

#endif /* INC_MIDISW_H_ */
