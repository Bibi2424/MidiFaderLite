#ifndef TOUCH_H
#define TOUCH_H

#include <Arduino.h>
#include <stdint.h>

#include "bsp.hpp"


#if USE_HW_TOUCH == false
	extern void init_touch(void);
	extern long get_touch(int pin);
#else
	static inline void init_touch(void) {}
	static inline long get_touch(int pin) { return touchRead(pin); }
#endif


#endif
