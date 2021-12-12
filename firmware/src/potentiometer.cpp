#include <Arduino.h>
#include <stdbool.h>
#include <MIDI.h>

#include "global.hpp"
#include "potentiometer.hpp"
#include "bsp.hpp"

#define FITLER  (5UL)


extern void potentiometer_init(potentiometer_t &pot) {
    potentiometer_get(pot);
    potentiometer_send(pot, true);
}


extern uint16_t potentiometer_get(potentiometer_t &pot) {
    pot.raw_value = adc_get(pot.analog_pin);
    return pot.raw_value;
}


extern void potentiometer_send(potentiometer_t &pot, bool force) {
    //! TEST: maybe add a buffer close to edge, map to 0..129, 0-1 = 0, 128-129 = 127, rest is value-1

    if( (pot.raw_value != 0 && pot.raw_value != 1023) && force == false) {
        pot.raw_value = uint16_t((FITLER * (uint16_t)pot.raw_value + (10-FITLER) * (uint16_t)pot.last_value) / 10UL);
    }

    int16_t diff = (int16_t)pot.raw_value - (int16_t)pot.last_value;
    if(ABS(diff) > 4 || force == true) {
        pot.midi_value = map(pot.raw_value, 4, 1023, 0, 127);
        usbMIDI.sendControlChange(pot.midi_control, pot.midi_value, MIDI_CHANNEL);
        pot.last_value = pot.raw_value;
    }
}
