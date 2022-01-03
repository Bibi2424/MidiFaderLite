#include "light_effect.hpp"


static void set_leds(color_t rgb) {
	analogWrite(LED_RED, rgb.red << 2);
	analogWrite(LED_GREEN, rgb.green << 2);
	analogWrite(LED_BLUE, rgb.blue << 2);
}


bool new_effect = false;

event_type_t current_event;
long last_midi_rx_event, last_midi_tx_event;

extern void light_effect_init(void) {
	current_event.raw = 0;
	set_leds((color_t){0, 0, 0});
}


extern void light_effect_register_event(event_type_t event) {
	if(event.midi_rx) {
		last_midi_rx_event = millis();
		if(current_event.midi_rx == 0) {
			current_event.midi_rx = 1;
			new_effect = true;
		}
	}
	if(event.midi_tx) {
		last_midi_tx_event = millis();
		if(current_event.midi_tx == 0) {
			current_event.midi_tx = 1;
			new_effect = true;
		}
	}
}


extern void light_effect_run(void) {
	static long last_run = 0;
	long current_time = millis();

	if(current_time - last_run < 50 && new_effect == false) { return; }
	last_run = current_time;
	new_effect = false;

	//! Clean event
	if(current_event.midi_rx && current_time - last_midi_rx_event > 200) { current_event.midi_rx = 0; }
	if(current_event.midi_tx && current_time - last_midi_tx_event > 200) { current_event.midi_tx = 0; }

	//! Set LEDS
	if(current_event.raw == 0) { set_leds((color_t){0, 16, 0}); }
	else {
		color_t rgb = {0,0,0};
		if(current_event.midi_rx) { rgb.red = 16; }
		if(current_event.midi_tx) { rgb.blue = 16; }
		set_leds(rgb);
	}
}
