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

typedef enum {
	CLEAR,
	SQUARE,
	NONE = 0xff
} effect_type_t;

typedef struct {
	color_t rgb;
	effect_type_t type;
	uint16_t duration;
} effect_t;


extern void light_effect_init(void);
extern void light_effect_trigger(const effect_t &effect);
extern void light_effect_run(void);

#endif
