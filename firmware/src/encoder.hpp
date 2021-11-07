#ifndef ENCODER_H
#define ENCODER_H

typedef struct {
    // const int encoder_A_pin;
    // const int encoder_B_pin;
    Encoder &object;
    const uint8_t midi_control;

    int position;
    int diff;
} encoder_t;


// extern void encoder_init(encoder_t &enc);
extern uint16_t encoder_get(encoder_t &enc);
extern void encoder_send(encoder_t &enc);


#endif
