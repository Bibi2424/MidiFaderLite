#ifndef LIGHT_EFFECT_H
#define LIGHT_EFFECT_H

#include <Arduino.h>
#include <stdint.h>

#include "bsp.hpp"


typedef struct {
	uint8_t red;
	uint8_t green;
	uint8_t blue;
} color_t;

typedef union {
	struct {
		uint8_t midi_rx : 1;
		uint8_t midi_tx : 1;	
	};
	uint8_t raw;
} event_type_t;


extern void light_effect_init(void);
extern void light_effect_register_event(event_type_t event);
extern void light_effect_run(void);

#endif
