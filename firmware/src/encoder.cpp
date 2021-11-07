#include <Arduino.h>
#include <stdbool.h>
#include <Encoder.h>

#include "global.hpp"
#include "encoder.hpp"
#include "bsp.hpp"



extern uint16_t encoder_get(encoder_t &enc) {
	long new_pos = enc.object.read();
	if(new_pos != enc.position) {
		enc.diff += enc.position - new_pos;
		if(enc.diff > 8) { enc.diff = 0; }
		else if(enc.diff < -8) { enc.diff = 0; }
		// Serial.printf("ENC[%u]: %d - %d - %d\n", enc.midi_control, new_pos, enc.position, enc.diff);
		enc.position = new_pos;
	}
	return enc.diff;
}


extern void encoder_send(encoder_t &enc) {
	if(enc.diff != 0) {
		enc.diff *= 4;*
		if(enc.diff > 63) { enc.diff = 63; }
		if(enc.diff < -63) { enc.diff = -63; }
		enc.diff += 64;
    	usbMIDI.sendControlChange(enc.midi_control, enc.diff, MIDI_CHANNEL);
    	enc.diff = 0;
	}
}

