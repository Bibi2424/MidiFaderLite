#include <Arduino.h>
#include <MIDI.h>
#include <stdbool.h>

#include "global.hpp"
#include "fader.hpp"
#include "bsp.hpp"
#include "touch.hpp"


#define INPUT_DEAD_ZONE     8
// #define OUTPUT_DEAD_ZONE    650
#define MAX_INTEGRAL        125
#define FILTER              10


static void set_motor_speed(fader_t &fader, int16_t speed, bool brake) {
    if(speed > 0) {
        digitalWrite(fader.dir_A_pin, HIGH);
        digitalWrite(fader.dir_B_pin, LOW);
        if(speed > RESOLUTION_MAX_VALUE) { speed = RESOLUTION_MAX_VALUE; }
        set_pwm(fader.speed_pin, speed);
    }
    else if(speed < 0) {
        digitalWrite(fader.dir_A_pin, LOW);
        digitalWrite(fader.dir_B_pin, HIGH);
        speed = -speed;
        if(speed > RESOLUTION_MAX_VALUE) { speed = RESOLUTION_MAX_VALUE; }
        set_pwm(fader.speed_pin, speed);
    }
    else {
        if(brake == false) {
            //! Free running
            digitalWrite(fader.dir_A_pin, LOW);
            digitalWrite(fader.dir_B_pin, LOW);
            set_pwm(fader.speed_pin, 0);
            pinMode(fader.speed_pin, OUTPUT);
            digitalWrite(fader.speed_pin, LOW);
        }
        else {
            //! Brake
            digitalWrite(fader.dir_A_pin, LOW);
            digitalWrite(fader.dir_B_pin, LOW);
            set_pwm(fader.speed_pin, 0);
            pinMode(fader.speed_pin, OUTPUT);
            digitalWrite(fader.speed_pin, HIGH);
        }
    }
}


static inline uint16_t fader_get(fader_t &fader) {
    int value = adc_get(fader.analog_pin);
    fader.midi_value = map(value, fader.analog_min_value, fader.analog_max_value, 0, 127);
    return value;
}


extern void fader_init(fader_t &fader) {
    fader.target = 512;
    fader_get(fader);
    fader_send(fader, true);
}


extern void fader_set(fader_t &fader, uint8_t midi_target) {
    fader.target = map(midi_target, 0, 127, 0, 1023);
    fader.integral = 0;
}


extern void fader_process(fader_t &fader) {
    int current_pos = fader_get(fader);

    if(is_touch_pressed(fader.touch_pin) == true) {
        set_motor_speed(fader, 0, false);
        fader.pressed = true;
        return;
    }
    fader.pressed = false;

    int16_t command = fader.target - current_pos;

    //! Reset integral on 0 crossing
    if( (command < 0 && fader.integral > 0) || (command > 0 && fader.integral < 0)) { fader.integral = 0; }
    fader.integral += command / 16;
    if(fader.integral > MAX_INTEGRAL) { fader.integral = MAX_INTEGRAL; }
    else if(fader.integral < -MAX_INTEGRAL) { fader.integral = -MAX_INTEGRAL; }

    if(command >= INPUT_DEAD_ZONE) {
        // command *= 2;
        // command /= 4;
        command /= 2;
        command += fader.integral;
        command += fader.m_deadzone;
        if(command > RESOLUTION_MAX_VALUE) { command = RESOLUTION_MAX_VALUE; }
    }
    else if(command <= -INPUT_DEAD_ZONE) {
        // command *= 2;
        // command /= 4;
        command /= 2;
        command += fader.integral;
        command -= fader.m_deadzone;
        if(command < -RESOLUTION_MAX_VALUE) { command = -RESOLUTION_MAX_VALUE; }
    }
    else {
        command = 0;
        fader.integral = 0;
    }

    if(command != 0) {
        command = (FILTER * command + (10 - FILTER) * fader.last_target) / 10;
    }

    set_motor_speed(fader, command, false);

    fader.last_target = fader.target;
}


extern bool fader_send(fader_t &fader, bool force) {
    if(fader.pressed || force == true) {
        if(fader.midi_value != fader.last_midi_value || force == true) {
            usbMIDI.sendControlChange(fader.midi_control, fader.midi_value, MIDI_CHANNEL);
            fader.target = map(fader.midi_value, 0, 127, 0, 1023);
            fader.last_midi_value = fader.midi_value;
            return true;
        }
    }
    return false;
}
