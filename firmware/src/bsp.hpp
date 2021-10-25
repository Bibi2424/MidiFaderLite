#ifndef BSP_H
#define BSP_H

#if ARDUINO_TEENSY2
#include "bsp_teensy2.hpp"
#elif ARDUINO_TEENSY2PP
#include "bsp_teensy2pp.hpp"
#elif ARDUINO_TEENSY31
#include "bsp_teensy32.hpp"
#endif

#endif