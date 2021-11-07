#ifndef FADER_H
#define FADER_H


typedef struct {
    const int dir_A_pin;
    const int dir_B_pin;
    const int speed_pin;

    const int touch_pin;
    const int analog_pin;

    const uint8_t midi_control;

    int16_t analog_min_value;
    int16_t analog_max_value;
    int16_t last_target;

    bool pressed;
    bool last_pressed;
    uint16_t target;
    uint8_t midi_value;
    uint8_t last_midi_value;

} fader_t;


extern void fader_init(fader_t &fader);
extern void fader_process(fader_t &fader);
extern void fader_send(fader_t &fader, bool force);


#endif
