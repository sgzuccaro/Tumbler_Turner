
#include <Arduino.h>

#define DIR 55
#define STEP 54
#define ENABLE 38

double desired_rpm = 8;
const int FULL_ROTATION = 200;
const int STEP_MODE = 16;
const double HIGH_TIME = 10; // microseconds
const double SEC_TO_US = 1000000; //second to microsecond






double low_time=0;


void setup(){

  Serial.begin(9600);

  delay(1);

  // define pins
  pinMode(DIR, OUTPUT);
  pinMode(STEP, OUTPUT);
  pinMode(ENABLE, OUTPUT);

  // enable stepper
  digitalWrite(ENABLE, LOW); // low activates driver

  // set direction
  digitalWrite(DIR, HIGH);

  ////////////////////
  // calcate delays //
  ////////////////////

  // calculate steps per rotation
  int steps_per_rotation=FULL_ROTATION*STEP_MODE;
  Serial.println("steps_per_rotation");  
  Serial.println(steps_per_rotation); 

  // RPS
  double seconds_per_rotation=60/desired_rpm;
  Serial.println("seconds_per_rotation");  
  Serial.println(seconds_per_rotation); 

// total seconds_per_rotations=seconds_per_step*steps_per_rotation;


  // how long should a step take in seconds
  double seconds_per_step=seconds_per_rotation/steps_per_rotation;
  Serial.println("seconds_per_step");  
  Serial.println(seconds_per_step);

  // required low time
  low_time=seconds_per_step*1000;
  Serial.println("low_time");  
  Serial.println(low_time);

 

}



// main cod
void loop(){

  ////////////////////////
  // blocking step code //
  ////////////////////////


    digitalWrite(STEP, HIGH);
    delayMicroseconds(HIGH_TIME); // stepper driver expects a rising edge of 10 microseconds



    digitalWrite(STEP, LOW);
    delay(low_time);


}