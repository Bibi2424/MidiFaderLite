#include <Arduino.h>

#include "fader.hpp"
#include "bsp.hpp"
#include "touch.hpp"


#define INPUT_DEAD_ZONE		6
#define OUTPUT_DEAD_ZONE	725
#define FILTER  			9


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
        pinMode(fader.speed_pin, OUTPUT);
        digitalWrite(fader.speed_pin, LOW);
        // set_pwm(fader.speed_pin, 0);
        //! Brake
        // digitalWrite(fader.dir_A_pin, HIGH);
        // digitalWrite(fader.dir_B_pin, HIGH);
        // pinMode(fader.speed_pin, OUTPUT);
        // digitalWrite(fader.speed_pin, HIGH);
    }
}


//! Make a unified calibration function
extern void calibrate_fader(fader_t &fader) {
    set_motor_speed(fader, -900);
    delay(500);
    fader.analog_min_value = analogRead(fader.analog_pin);
    set_motor_speed(fader, 900);
    delay(500);
    fader.analog_max_value = analogRead(fader.analog_pin);
    set_motor_speed(fader, 0);
    fader.target = 64;
}


extern void process_fader(fader_t &fader) {
    int current_pos = analogRead(fader.analog_pin);
    fader.midi_value = map(current_pos, fader.analog_min_value, fader.analog_max_value, 0, 127);

    if(is_touch_pressed(fader.touch_pin) == true) {
        fader.pressed = true;
        return;
    }
    fader.pressed = false;

    int16_t command = fader.target - current_pos;

    if(command >= INPUT_DEAD_ZONE) {
        // command *= 2;
        command /= 2;
        command += OUTPUT_DEAD_ZONE;
        if(command > RESOLUTION_MAX_VALUE) { command = RESOLUTION_MAX_VALUE; }
    }
    else if(command <= -INPUT_DEAD_ZONE) {
        // command *= 2;
        command /= 2;
        command -= OUTPUT_DEAD_ZONE;
        if(command < -RESOLUTION_MAX_VALUE) { command = -RESOLUTION_MAX_VALUE; }
    }
    else {
        command = 0;
    }


    command = (FILTER * command + (10 - FILTER) * fader.last_target) / 10;
    // Serial.print("Loop: ");
    // Serial.print(target);
    // Serial.print(" - ");
    // Serial.print(current_pos);
    // Serial.print(" - ");
    // Serial.println(command);

    set_motor_speed(fader, command);

    fader.last_target = fader.target;
}
