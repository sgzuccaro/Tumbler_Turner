
#include <Arduino.h>
#include <AccelStepper.h>
#include <Metro.h>

#define STEP_PIN 2 //D2
#define DIR_PIN 3 //D3
#define ENABLE_PIN 4 //D4
#define DEBUG_LED 13 

#define MS1_PIN 9 
#define MS2_PIN 10 
#define MS3_PIN 11 

#define POT_PIN A0 

AccelStepper stepper(AccelStepper::DRIVER,STEP_PIN,DIR_PIN); //DRIVER means your using a stepper driver
double max_rps=0.13; //8rpm/60
double max_rpss=25;
double dead_zone=20; //rps
double steps_per_rev=3200; //200*microsteps

Metro pot_check=Metro(100); //milliseconds 0.1 sec

double max_vel;
double max_accel;
double vel=0;
double vel_offset=0;

int pot_dead_zone=2; // change detected size
int pot=0;
int prev_pot=0;

bool enabled_state=false;


void setup(){
 

  pinMode(DEBUG_LED, OUTPUT);
  pinMode(MS1_PIN, OUTPUT);
  pinMode(MS2_PIN, OUTPUT);
  pinMode(MS3_PIN, OUTPUT);
  digitalWrite(MS1_PIN, HIGH);
  digitalWrite(MS2_PIN, HIGH);
  digitalWrite(MS3_PIN, HIGH);

  //convert rps to steps/s
  max_vel=max_rps*steps_per_rev;
  max_accel=max_rpss*steps_per_rev;

  stepper.setMaxSpeed(max_vel); //steps per second

  stepper.setAcceleration(max_accel); //steps per sec^2

  stepper.setPinsInverted(false, false, true); //dir, step, enable

  stepper.setEnablePin(ENABLE_PIN); // GRD=ON VIO=OFF

  stepper.enableOutputs(); // setspin modes as outputs
  enabled_state=true;
   
 
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
      if(abs(vel)<dead_zone){
        vel=0;
      
      }

      stepper.setSpeed(vel);

    } // if pot changed

  }//if pot read timer


  stepper.runSpeed(); //call as often as possible. This steps when needed for speed control
  

}