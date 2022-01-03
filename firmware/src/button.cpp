#include <Arduino.h>
#include <stdbool.h>

#include "global.hpp"
#include "bsp.hpp"
#include "button.hpp"

#define BOUNCE_INTERVAL	10


extern void button_init(button_t &button) {
	pinMode(button.pin, INPUT_PULLUP);
	button.b = Bounce();
	button.b.interval(BOUNCE_INTERVAL);
	button.b.attach(button.pin);
	button.b.update();
	button_send(button);
}


extern bool button_update(button_t &button) {
	return button.b.update();
}


extern bool button_send(button_t &button) {
	uint8_t pressed = button.b.read() ? 0 : 127;
    usbMIDI.sendControlChange(button.midi_control, pressed, MIDI_CHANNEL);
    return true;
}

