#include "light_effect.hpp"


static void set_leds(color_t rgb) {
	analogWrite(LED_RED, rgb.red << 2);
	analogWrite(LED_GREEN, rgb.green << 2);
	analogWrite(LED_BLUE, rgb.blue << 2);
}


effect_t current_effect = { .rgb = {0, 0, 0}, .type = NONE };
uint8_t state = 0, max_state;
long last_run = 0;
long remaining;


extern void light_effect_init(void) {
	set_leds((color_t){0, 0, 0});
}


extern void light_effect_trigger(const effect_t &effect) {
	current_effect = effect;
	state = 0;
	last_run = millis();
}


extern void light_effect_run(void) {
	long current_time = millis();
	long elapse = current_time - last_run;

	if(current_effect.type == NONE) { return; }
	if(current_time - last_run < 50) { return; }
	last_run = current_time;

	//! Set LEDS
	if(current_effect.type == SQUARE) {
		if(state == 0) {
			state = 1;
			max_state = 2;
			remaining = current_effect.duration;
		}

		if(state == 1 ) { set_leds(current_effect.rgb); }
		else { set_leds((color_t){0, 0, 0}); }
	}

	//! Check for next state
	remaining -= elapse;
	if(remaining <= 0) {
		state++;
		if(state > max_state) { state = 1; }
		remaining = current_effect.duration;
	}
}
