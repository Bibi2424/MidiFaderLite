#ifndef POTENTIOMETER_H
#define POTENTIOMETER_H

#include <MIDI.h>


typedef struct {
	const int analog_pin;
	const uint8_t midi_control;

	uint8_t midi_value;
	uint8_t last_midi_value;
} potentiometer_t;


// extern void potentiometer_init(void);
extern uint16_t potentiometer_get(potentiometer_t &pot);
extern void potentiometer_send(potentiometer_t &pot);


#endif
