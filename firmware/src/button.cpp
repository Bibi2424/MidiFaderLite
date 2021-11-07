#include <Arduino.h>
#include <stdbool.h>

#include "global.hpp"
#include "bsp.hpp"
#include "button.hpp"


extern void button_init(button_t &button) {
	// pinMode(button.pin, OUTPUT);
	// digitalWrite(button.pin, HIGH);
	pinMode(button.pin, INPUT_PULLUP);
	button_get(button);
	button_send(button, true);
}


extern uint16_t button_get(button_t &button) {
	// return 0;
	button.pressed = digitalRead(button.pin) ? 0 : 127;
	return button.pressed;
}


extern void button_send(button_t &button, bool force) {
	// return;
    if(button.pressed != button.last_pressed || force == true) {
        usbMIDI.sendControlChange(button.midi_control, button.pressed, MIDI_CHANNEL);
        button.last_pressed = button.pressed;
    }
}

