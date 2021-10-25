#ifndef FADER_H
#define FADER_H


typedef struct {
	const int dir_A_pin;
	const int dir_B_pin;
	const int speed_pin;

	const int touch_pin;
	const int analog_pin;

	int16_t last_command;

} fader_t;


extern void process_fader(fader_t &fader, uint16_t target);



#endif