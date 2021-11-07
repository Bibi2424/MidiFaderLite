#ifndef BUTTON_H
#define BUTTON_H


typedef struct {
    const int pin;
    const uint8_t midi_control;

    uint8_t pressed;
    uint8_t last_pressed;
} button_t;


extern void button_init(button_t &button);
extern uint16_t button_get(button_t &button);
extern void button_send(button_t &button, bool force);


#endif
