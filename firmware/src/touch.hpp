#ifndef TOUCH_H
#define TOUCH_H

#include <Arduino.h>
#include <stdint.h>

#include "bsp.hpp"

#define PRESSED_TOUCH_THRESHOLD	400


#if USE_HW_TOUCH == false
	extern void init_touch(void);
#else
	static inline void init_touch(void) {}
#endif

extern bool is_touch_pressed(int pin);

#endif
