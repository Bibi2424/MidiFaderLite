#include <Arduino.h>
#include <stdbool.h>

#include "global.hpp"
#include "potentiometer.hpp"
#include "bsp.hpp"

#define FITLER  (5UL)


extern void potentiometer_init(potentiometer_t &pot) {
    potentiometer_get(pot);
    potentiometer_send(pot, true);
}


extern uint16_t potentiometer_get(potentiometer_t &pot) {

    uint16_t raw_value = analogRead(pot.analog_pin);
    pot.midi_value = map(raw_value, 0, 1023, 0, 127);
    return pot.midi_value;
}


extern void potentiometer_send(potentiometer_t &pot, bool force) {
    //! TEST: maybe add a buffer close to edge, map to 0..129, 0-1 = 0, 128-129 = 127, rest is value-1

    if( (pot.midi_value != 0 && pot.midi_value != 127) && force == false) {
        pot.midi_value = uint8_t((FITLER * (uint16_t)pot.midi_value + (10-FITLER) * (uint16_t)pot.last_midi_value) / 10UL);
    }

    if(pot.midi_value != pot.last_midi_value || force == true) {
        usbMIDI.sendControlChange(pot.midi_control, pot.midi_value, MIDI_CHANNEL);
        pot.last_midi_value = pot.midi_value;
    }
}
