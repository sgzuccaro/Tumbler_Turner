
#include <Arduino.h>
#include <AccelStepper.h>
#include <Metro.h>

#define STEP_PIN 2 //D2
#define DIR_PIN 3 //D3
#define ENABLE_PIN 4 //D4
#define DEBUG_LED 13 

#define POT_PIN A0 

AccelStepper stepper(AccelStepper::DRIVER,STEP_PIN,DIR_PIN); //DRIVER means your using a stepper driver
double max_rps=0.2; //12rpm/60
double max_rpss=25;
double dead_zone=10; //rps
double steps_per_rev=3200; //200*microsteps

Metro pot_check=Metro(100); //milliseconds 0.1 sec

double max_vel;
double max_accel;
double vel=0;

int pot_dead_zone=2;
int pot=0;
int prev_pot=0;




void setup(){

  // serial communication
  Serial.begin(9600);

  pinMode(DEBUG_LED, OUTPUT);

  //convert rps to steps/s
  max_vel=max_rps*steps_per_rev;
  max_accel=max_rpss*steps_per_rev;

  stepper.setMaxSpeed(max_vel); //steps per second

  stepper.setAcceleration(max_accel); //steps per sec^2

  stepper.setPinsInverted(false, false, true); //dir, step, enable

  stepper.setEnablePin(ENABLE_PIN); // GRD=ON VIO=OFF

  stepper.enableOutputs(); // setspin modes as outputs

  for(uint8_t i=0; i<6; i++){
    digitalWrite(DEBUG_LED, HIGH);
    delay(100);
    digitalWrite(DEBUG_LED, LOW);
    delay(100);
  }
  Serial.println("Setup complete");
}





void loop(){

  if(pot_check.check()){

    //read pot input
    pot = analogRead(POT_PIN);

    if(pot < prev_pot-pot_dead_zone || pot > prev_pot+pot_dead_zone ){

      prev_pot=pot;

      //map pot to speed
      vel = map(pot, 0, 1023, -max_vel, max_vel);

      //if near zero
      if(abs(vel)<dead_zone){vel=0;}

      //dir based on vel sign
      stepper.setSpeed(vel);

      Serial.println(vel);

      } 


    }//if pot read timer

  stepper.runSpeed(); //call as often as possible. This steps when needed for speed control

}