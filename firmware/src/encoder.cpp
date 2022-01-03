#include <Arduino.h>
#include <stdbool.h>
#define ENCODER_OPTIMIZE_INTERRUPTS
#include <Encoder.h>

#include "global.hpp"
#include "encoder.hpp"
#include "bsp.hpp"


extern uint16_t encoder_get(encoder_t &enc) {
	long new_pos = enc.object.read();
	if(new_pos != enc.position) {
		enc.diff += enc.position - new_pos;
		if(enc.diff > 5) { enc.diff = 0; }
		else if(enc.diff < -5) { enc.diff = 0; }
		enc.position = new_pos;
	}
	return enc.diff;
}


extern bool encoder_send(encoder_t &enc) {
	if(enc.diff != 0) {
		if(enc.diff > 63) { enc.diff = 63; }
		if(enc.diff < -63) { enc.diff = -63; }
		enc.diff += 64;
		// Serial.printf("[Diff:%d]\n", enc.diff);
		usbMIDI.sendControlChange(enc.midi_control, enc.diff & 0x7f, MIDI_CHANNEL);
		enc.diff = 0;
		return true;
	}
	return false;
}

