#ifndef BUTTON_H
#define BUTTON_H

#include <Bounce2.h>

typedef struct {
    const int pin;
    const uint8_t midi_control;

    Bounce  b;
} button_t;


extern void button_init(button_t &button);
extern bool button_update(button_t &button);
extern bool button_send(button_t &button);


#endif
