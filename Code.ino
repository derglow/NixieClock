#include "Wire.h"

#define DS3231_I2C_ADDRESS 0x68

//_______________________________________________________________________________________________
//Begin Define all the pins
#define serData 14 //PC0 A0=14
#define serClk 15 //PC1 A1=15
#define serRClk 16 //PC2 A2=16

#define led1 2 //PD2
#define led2 3 //PD3, part D3 used to flag fake GPS time

#define button1 4 //portD, left button
#define button2 5 //portD, right button

#define supplyShtdn 7 //PD7 activates high voltage supply
//End Define all the pins
//_______________________________________________________________________________________________

//Serial comm related variables
#define serialBufferLength 80
uint8_t receivedByte;
uint8_t serialReceiveBuffer[serialBufferLength];
uint8_t serialReceivePos = 0;
uint8_t processReceivedByte = 0;

//my old way of storing time data, update this to the newTimeArrayGPS
uint8_t GPShourDig1;
uint8_t GPShourDig2;
uint8_t GPSminuteDig1;
uint8_t GPSminuteDig2;
uint8_t GPSsecondDig1;
uint8_t GPSsecondDig2;

//On startup, the GPS sometime spits out a fake time of 23:59:45 and counts up, we need to check for this before utilizing the gps time
uint8_t fakeTimeFlag = 1; //on startup, set this to one, and then set it to zero once we start receiving accurate time values
uint8_t oldTimeArrayGPS[6] = {2,3,5,9,4,5}; //this stores the previous time
uint8_t newTimeArrayGPS[6]; //anytime a new time is grabbed from GPS, put it here

//This stores DS3231 time locally. This is time zone adjusted time.
uint8_t timeArray3231[6]; //anytime a new time is grabbed from DS3231, put it here

//Define the proper shift register output for each digit//
uint8_t decadeValues[11] = {
  0b00000000, //this decodes to digit 0
  0b00000001, //this decodes to digit 1
  0b00000010, //this decodes to digit 2
  0b00000011, //this decodes to digit 3
  0b00000100, //this decodes to digit 4
  0b00000101, //this decodes to digit 5
  0b00000110, //this decodes to digit 6
  0b00000111, //this decodes to digit 7
  0b00001000, //this decodes to digit 8
  0b00001001, //this decodes to digit 9
  0b00001111, //this decodes to no digit
};

//Define info for button presses
uint8_t buttonDebounce = 10; //debounce milliseconds
uint8_t button1timer = 0;
uint8_t button1prevState = 0;
uint8_t button2timer = 0;
uint8_t button2prevState = 0;
uint8_t timeZone = 0; //hour adjustment for timezone
uint8_t militaryTime = 1; //switch between 12 and 24h format. 24h format default

//_______________________________________________________________________________________________
//BEGIN SETUP AND MAIN LOOP

void setup() {
  pinMode(supplyShtdn,OUTPUT);
  digitalWrite(supplyShtdn,LOW);

  pinMode(led1,OUTPUT);
  pinMode(led2,OUTPUT);

  pinMode(button1,INPUT);
  digitalWrite(button1,HIGH);
  pinMode(button2,INPUT);
  digitalWrite(button2,HIGH);
  
  pinMode(serData,OUTPUT);
  pinMode(serClk,OUTPUT);
  pinMode(serRClk,OUTPUT);

  sendSixDigits(0,0,0,0,0,0);
  delay(100);  
  sendSixDigits(1,1,1,1,1,1);
  delay(100);  
  sendSixDigits(2,2,2,2,2,2);
  delay(100);  
  sendSixDigits(3,3,3,3,3,3);
  delay(100);  
  sendSixDigits(4,4,4,4,4,4);
  delay(100);  
  sendSixDigits(5,5,5,5,5,5);
  delay(100);  
  sendSixDigits(6,6,6,6,6,6);
  delay(100);  
  sendSixDigits(7,7,7,7,7,7);
  delay(100);  
  sendSixDigits(8,8,8,8,8,8);
  delay(100);  
  sendSixDigits(9,9,9,9,9,9);
  delay(100);
  sendSixDigits(10,10,10,10,10,10);
  Serial.begin(4800);
  Wire.begin();
  digitalWrite(led2,HIGH);
  fakeTimeFlag = 1;
}

void loop() {
  if(Serial.available()){
    receivedByte=Serial.read();
    processReceivedByte=1; //Raise serial flag to process the received byte
  }
  processReceivedByteFn();
  readDS3231time();
  sendSixDigits(timeArray3231[0],timeArray3231[1],timeArray3231[2],timeArray3231[3],timeArray3231[4],timeArray3231[5]);
  checkButtons();
}

//END SETUP AND MAIN LOOP
//_______________________________________________________________________________________________

void checkButtons(void){
  uint8_t button1State = digitalRead(button1);
  uint8_t button2State = digitalRead(button2);
  uint8_t currentMilliS = millis();
  
  if(button1State != button1prevState){ // if button state has changed
    if((button1prevState == 0) && ( (currentMilliS - button1timer) > buttonDebounce)){ //if button was just let go and the button was held down at least debounce amount of time
      timeZone = (timeZone + 1) % 24; //adjust time zone 
    }
    button1timer = currentMilliS; //reset timer for most recent state change
    button1prevState = button1State; //store state for next loop
  }
    
  if(button2State != button2prevState){
    if((button2prevState == 0) && ( (currentMilliS - button2timer) > buttonDebounce)){
      if(militaryTime == 0){
        militaryTime = 1;
      }
      else{
        militaryTime = 0;
      }
    }
    button2timer = currentMilliS;
    button2prevState = button2State;
  }
  
}

uint8_t asciiToBin(uint8_t asciiValue){ //converts ascii to bin, if outside of 0-9 range it returns 10
  if((asciiValue >= 0x30) & (asciiValue <= 0x39)){
    return (asciiValue - 0x30);
  }
  else{
    return 10;
  }
}

void storeGPSTime(void){
  GPShourDig1 = asciiToBin(serialReceiveBuffer[7]);
  GPShourDig2 = asciiToBin(serialReceiveBuffer[8]);
  GPSminuteDig1 = asciiToBin(serialReceiveBuffer[9]);
  GPSminuteDig2 = asciiToBin(serialReceiveBuffer[10]);
  GPSsecondDig1 = asciiToBin(serialReceiveBuffer[11]);
  GPSsecondDig2 = asciiToBin(serialReceiveBuffer[12]);
  newTimeArrayGPS[0] = asciiToBin(serialReceiveBuffer[7]);
  newTimeArrayGPS[1] = asciiToBin(serialReceiveBuffer[8]);
  newTimeArrayGPS[2] = asciiToBin(serialReceiveBuffer[9]);
  newTimeArrayGPS[3] = asciiToBin(serialReceiveBuffer[10]);
  newTimeArrayGPS[4] = asciiToBin(serialReceiveBuffer[11]);
  newTimeArrayGPS[5] = asciiToBin(serialReceiveBuffer[12]);
}

void processReceivedByteFn(void){
  if(processReceivedByte==1){ //Check serial flag
    if(receivedByte==36){ //Check for $
      serialReceivePos=0; //reset to position 0
      serialReceiveBuffer[serialReceivePos]=receivedByte; //add the $ to pos 0 (unnecessary command)
      serialReceivePos++; //increment the position
      processReceivedByte=0;      //clear the flag
    }
    else{//all other received bytes
      //add the byte to buffer, then increment the pos, check if the pos is overflowed 
      serialReceiveBuffer[serialReceivePos]=receivedByte;
      serialReceivePos++; //increment the position
      if(serialReceivePos==80){
        serialReceivePos=79;
      }
      if((receivedByte == 0x0D) & (serialReceiveBuffer[3] == 0x47) & (serialReceiveBuffer[4] == 0x47) & (serialReceiveBuffer[5] == 0x41)){//if received byte is carriage return and GPGGA is found, save the time
        storeGPSTime();
        //sendSixDigits(newTimeArrayGPS[0],newTimeArrayGPS[1],newTimeArrayGPS[2],newTimeArrayGPS[3],newTimeArrayGPS[4],newTimeArrayGPS[5]);

        if(fakeTimeFlag == 1){//this if statement checks for 23:59:45 running time during startup
          if(checkSecondIncrement(oldTimeArrayGPS,newTimeArrayGPS)){
            digitalWrite(led2,HIGH);
            updateGPSTimeArray(); //update new time array
          }
          else{
            digitalWrite(led2,LOW);
            fakeTimeFlag = 0; //clear fake time flag

          }
        }
        else{ //if the fake time flag is cleared, send gps time to ds3231
          update3231gps();
        }
      }
      processReceivedByte=0; //clear the serial flag
    }
  }
}

void flashLED1(uint8_t delayTime){
  digitalWrite(led1,HIGH);
  delay(delayTime);
  digitalWrite(led1,LOW);
}

void flashLED2(uint8_t delayTime){
  digitalWrite(led2,HIGH);
  delay(delayTime);
  digitalWrite(led2,LOW);
}

uint16_t calcSeconds(uint8_t timeArray[6]){ //convert hour:min:sec array to number of seconds past 00:00:00, ignore the hour to keep the number uint16 or smaller, 1 in 3600 chance of a bug here
  return (timeArray[2]*10+timeArray[3])*60+(timeArray[4]*10+timeArray[5]);
}

uint8_t checkSecondIncrement(uint8_t oldArray[6], uint8_t newArray[6]){ //run this during initial startup to make sure GPS is sending accurate time. Look for 23:59:45 and counting. Check if time has incremented by 1
  uint16_t oldTimeSecs = calcSeconds(oldArray); //convert old time array to # of seconds
  uint16_t newTimeSecs = calcSeconds(newArray); //convert new time array to # of seconds
  //check if they are 1s different
  return ((newTimeSecs - oldTimeSecs) == 1)||((newTimeSecs == 0) && (oldTimeSecs == 3599)); //case one is simple subtraction and check if difference is 1, case two checks for 00:00 and 59:59
}

void updateGPSTimeArray(void){
  oldTimeArrayGPS[0] = newTimeArrayGPS[0];
  oldTimeArrayGPS[1] = newTimeArrayGPS[1];
  oldTimeArrayGPS[2] = newTimeArrayGPS[2];
  oldTimeArrayGPS[3] = newTimeArrayGPS[3];
  oldTimeArrayGPS[4] = newTimeArrayGPS[4];
  oldTimeArrayGPS[5] = newTimeArrayGPS[5];
}

void update3231gps(void){
  uint8_t gps3231hour = newTimeArrayGPS[0]*10 + newTimeArrayGPS[1]; //add time zone correction here eventually
  uint8_t gps3231minute = newTimeArrayGPS[2]*10 + newTimeArrayGPS[3];
  uint8_t gps3231second = newTimeArrayGPS[4]*10 + newTimeArrayGPS[5];
  setDS3231time(gps3231second, gps3231minute, gps3231hour, 1, 1, 1, 1);
}

void sendSixDigits(uint8_t hour1, uint8_t hour2, uint8_t minute1, uint8_t minute2, uint8_t second1,uint8_t second2){
  uint8_t sendThisByte3 = ((decadeValues[second1]<<4)|decadeValues[second2]);
  uint8_t sendThisByte2 = ((decadeValues[minute1]<<4)|decadeValues[minute2]);
  uint8_t sendThisByte1 = ((decadeValues[hour1]<<4)|decadeValues[hour2]);
  for(uint8_t x = 0; x < 8; x += 1){
    if((sendThisByte3 >> x) & 0x01){
        digitalWrite(serData,HIGH);
    }
    else{
        digitalWrite(serData,LOW);
    }
  digitalWrite(serClk,HIGH);
  digitalWrite(serClk,LOW);
  }

    for(uint8_t x = 0; x < 8; x += 1){
    if((sendThisByte2 >> x) & 0x01){
        digitalWrite(serData,HIGH);
    }
    else{
        digitalWrite(serData,LOW);
    }
  digitalWrite(serClk,HIGH);
  digitalWrite(serClk,LOW);
  }

    for(uint8_t x = 0; x < 8; x += 1){
    if((sendThisByte1 >> x) & 0x01){
        digitalWrite(serData,HIGH);
    }
    else{
        digitalWrite(serData,LOW);
    }
  digitalWrite(serClk,HIGH);
  digitalWrite(serClk,LOW);
  }
  
  digitalWrite(serRClk,HIGH);
  digitalWrite(serRClk,LOW);
}

//_______________________________________________________________________________________________
//BEGIN DS3231 functions
byte decToBcd(byte val)
{
  return( (val/10*16) + (val%10) );
}
// Convert binary coded decimal to normal decimal numbers
byte bcdToDec(byte val)
{
  return( (val/16*10) + (val%16) );
}

void setDS3231time(uint8_t second, uint8_t minute, uint8_t hour, uint8_t dayOfWeek, uint8_t dayOfMonth, uint8_t month, uint8_t year){
  // sets time and date data to DS3231
  Wire.beginTransmission(DS3231_I2C_ADDRESS);
  Wire.write(0); // set next input to start at the seconds register
  Wire.write(decToBcd(second)); // set seconds
  Wire.write(decToBcd(minute)); // set minutes
  Wire.write(decToBcd(hour)); // set hours
  Wire.write(decToBcd(dayOfWeek)); // set day of week (1=Sunday, 7=Saturday)
  Wire.write(decToBcd(dayOfMonth)); // set date (1 to 31)
  Wire.write(decToBcd(month)); // set month
  Wire.write(decToBcd(year)); // set year (0 to 99)
  Wire.endTransmission();
}

void readDS3231time(void){
  uint8_t rawSecond;
  uint8_t rawMinute;
  uint8_t rawHour;
  Wire.beginTransmission(DS3231_I2C_ADDRESS);
  Wire.write(0); // set DS3231 register pointer to 00h
  Wire.endTransmission();
  Wire.requestFrom(DS3231_I2C_ADDRESS, 7);
  // request seven bytes of data from DS3231 starting from register 00h
  rawSecond = bcdToDec(Wire.read() & 0x7f);
  rawMinute = bcdToDec(Wire.read());
  rawHour = (bcdToDec(Wire.read() & 0x3f) + timeZone) % 24; //apply time zone adjust
  //if(rawHour > 24){
  //  rawHour = rawHour % 24;
  //}
  if(militaryTime == 0){
    rawHour = rawHour % 12;
    if(rawHour == 0){
      rawHour = 12;
    }
  }
  bcdToDec(Wire.read()); //discard day of week
  bcdToDec(Wire.read()); //discard day of month
  bcdToDec(Wire.read()); //discard month
  bcdToDec(Wire.read()); //discard year
  timeArray3231[0] = rawHour/10;
  timeArray3231[1] = rawHour%10;
  timeArray3231[2] = rawMinute/10;
  timeArray3231[3] = rawMinute%10;
  timeArray3231[4] = rawSecond/10;
  timeArray3231[5] = rawSecond%10;
  
}
//END DS3231 functions
//_______________________________________________________________________________________________
