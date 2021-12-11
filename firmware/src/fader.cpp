#include <Arduino.h>
#include <MIDI.h>
#include <stdbool.h>

#include "global.hpp"
#include "fader.hpp"
#include "bsp.hpp"
#include "touch.hpp"


#define INPUT_DEAD_ZONE     8
#define OUTPUT_DEAD_ZONE    750
#define FILTER              9

#define MAX_VALUE           900


static void set_motor_speed(fader_t &fader, int16_t speed) {
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
        //! Free running
        digitalWrite(fader.dir_A_pin, LOW);
        digitalWrite(fader.dir_B_pin, LOW);
        set_pwm(fader.speed_pin, 0);
        pinMode(fader.speed_pin, OUTPUT);
        digitalWrite(fader.speed_pin, LOW);
        //! Brake
        // digitalWrite(fader.dir_A_pin, LOW);
        // digitalWrite(fader.dir_B_pin, LOW);
        // set_pwm(fader.speed_pin, 0);
        // pinMode(fader.speed_pin, OUTPUT);
        // digitalWrite(fader.speed_pin, HIGH);
    }
}


extern void fader_init(fader_t &fader) {
    fader.target = 512;
    fader_process(fader);
    fader_send(fader, true);
}


extern void fader_process(fader_t &fader) {
    int current_pos = analogRead(fader.analog_pin);
    fader.midi_value = map(current_pos, fader.analog_min_value, fader.analog_max_value, 0, 127);

    if(is_touch_pressed(fader.touch_pin) == true) {
        set_motor_speed(fader, 0);
        fader.pressed = true;
        return;
    }
    fader.pressed = false;

    int16_t command = fader.target - current_pos;

    if(command >= INPUT_DEAD_ZONE) {
        // command *= 2;
        command /= 4;
        command += OUTPUT_DEAD_ZONE;
        if(command > MAX_VALUE) { command = MAX_VALUE; }
    }
    else if(command <= -INPUT_DEAD_ZONE) {
        // command *= 2;
        command /= 4;
        command -= OUTPUT_DEAD_ZONE;
        if(command < -MAX_VALUE) { command = -MAX_VALUE; }
    }
    else {
        command = 0;
    }

    if(command != 0) {
        command = (FILTER * command + (10 - FILTER) * fader.last_target) / 10;
    }
    // Serial.printf("Fader[%u]: %u - %u - %u\n", fader.midi_control, fader.target, current_pos, command);

    set_motor_speed(fader, command);

    fader.last_target = fader.target;
}


extern void fader_send(fader_t &fader, bool force) {
    if(fader.pressed || force == true) {
        if(fader.midi_value != fader.last_midi_value || force == true) {
            usbMIDI.sendControlChange(fader.midi_control, fader.midi_value, MIDI_CHANNEL);
            fader.target = map(fader.midi_value, 0, 127, 0, 1023);
            fader.last_midi_value = fader.midi_value;
        }
    }
    if(fader.pressed != fader.last_pressed || force == true) {
        usbMIDI.sendControlChange(fader.midi_control + 0x70, fader.pressed?127:0, MIDI_CHANNEL+1);
        fader.last_pressed = fader.pressed;
    }
}