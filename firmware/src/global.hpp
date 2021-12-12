#ifndef GLOBAL_H
#define GLOBAL_H


#include <ADC.h>


#define MIDI_CHANNEL	1

// #define WITHOUT_VMOT

#define ABS(x)  ( ( (x) < 0) ? -(x) : (x) )

extern ADC* adc;


#endif
