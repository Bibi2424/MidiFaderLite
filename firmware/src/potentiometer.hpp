#ifndef POTENTIOMETER_H
#define POTENTIOMETER_H


typedef struct {
    const int analog_pin;
    const uint8_t midi_control;

    uint8_t midi_value;
    uint8_t last_midi_value;
} potentiometer_t;


extern void potentiometer_init(potentiometer_t &pot);
extern uint16_t potentiometer_get(potentiometer_t &pot);
extern void potentiometer_send(potentiometer_t &pot, bool force);


#endif
