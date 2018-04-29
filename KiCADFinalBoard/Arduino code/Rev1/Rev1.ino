//Define all the pins//
#define serData 14 //PC0 A0=14
#define serClk 15 //PC1 A1=15
#define serRClk 16 //PC2 A2=16

#define led1 2 //PD2
#define led2 3 //PD3

#define switch1 4 //portD 
#define switch2 5 //portD

#define supplyShtdn 7 //PD7

//Serial related variables//
#define serialBufferLength 80
uint8_t receivedByte;
uint8_t serialReceiveBuffer[serialBufferLength];
uint8_t serialReceivePos = 0;
uint8_t processReceivedByte = 0;

//my old way of storing time data, update this to the newTimeArray
uint8_t GPShourDig1;
uint8_t GPShourDig2;
uint8_t GPSminuteDig1;
uint8_t GPSminuteDig2;
uint8_t GPSsecondDig1;
uint8_t GPSsecondDig2;

//On startup, the GPS sometime spits out a fake time of 23:59:45 and counts up, we need to check for this before utilizing the gps time
uint8_t fakeTimeFlag = 1; //on startup, set this to one, and then set it to zero once we start receiving accurate time values
uint8_t oldTimeArray[6] = {2,3,5,9,4,5}; //this stores the previous time
uint8_t newTimeArray[6]; //anytime a new time is grabbed from GPS, put it here

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



void setup() {
  pinMode(supplyShtdn,OUTPUT);
  digitalWrite(supplyShtdn,LOW);

  pinMode(led1,OUTPUT);
  pinMode(led2,OUTPUT);
  
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
  fakeTimeFlag = 1;
}

void loop() {
  if(Serial.available()){
    receivedByte=Serial.read();
    processReceivedByte=1; //Raise serial flag to process the received byte
  }
  processReceivedByteFn();
}

uint8_t asciiToBin(uint8_t asciiValue){ //converts ascii to bin, if outside of 0-9 range it returns 10
  if((asciiValue >= 0x30) & (asciiValue <= 0x39)){
    return (asciiValue - 0x30);
  }
  else{
    return 10;
  }
}

void storeTime(void){
  GPShourDig1 = asciiToBin(serialReceiveBuffer[7]);
  GPShourDig2 = asciiToBin(serialReceiveBuffer[8]);
  GPSminuteDig1 = asciiToBin(serialReceiveBuffer[9]);
  GPSminuteDig2 = asciiToBin(serialReceiveBuffer[10]);
  GPSsecondDig1 = asciiToBin(serialReceiveBuffer[11]);
  GPSsecondDig2 = asciiToBin(serialReceiveBuffer[12]);
  newTimeArray[0] = asciiToBin(serialReceiveBuffer[7]);
  newTimeArray[1] = asciiToBin(serialReceiveBuffer[8]);
  newTimeArray[2] = asciiToBin(serialReceiveBuffer[9]);
  newTimeArray[3] = asciiToBin(serialReceiveBuffer[10]);
  newTimeArray[4] = asciiToBin(serialReceiveBuffer[11]);
  newTimeArray[5] = asciiToBin(serialReceiveBuffer[12]);
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
        storeTime();
        sendSixDigits(GPShourDig1,GPShourDig2,GPSminuteDig1,GPSminuteDig2,GPSsecondDig1,GPSsecondDig2);
        if(fakeTimeFlag == 1){//this if statement checks for 23:59:45 running time during startup
          if(checkSecondIncrement(oldTimeArray,newTimeArray)){
            digitalWrite(led2,HIGH);
            updateTimeArray();
          }
          else{
            digitalWrite(led2,LOW);
            fakeTimeFlag = 0; //clear this flag

          }
        }
      }
      processReceivedByte=0; //clear the flag
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

uint16_t calcSeconds(uint8_t timeArray[6]){ //convert hour:min:sec array to number of seconds past 00:00:00, ignore the hour to keep the number uint16 or smaller
  return (timeArray[2]*10+timeArray[3])*60+(timeArray[4]*10+timeArray[5]);
}

uint8_t checkSecondIncrement(uint8_t oldArray[6], uint8_t newArray[6]){ //run this during initial startup to make sure GPS is sending accurate time. Look for 23:59:45 and counting. Check if time has incremented by 1
  uint16_t oldTimeSecs = calcSeconds(oldArray); //convert old time array to # of seconds
  uint16_t newTimeSecs = calcSeconds(newArray); //convert new time array to # of seconds
  //check if they are 1s different
  return ((newTimeSecs - oldTimeSecs) == 1)||((newTimeSecs == 0) && (oldTimeSecs == 3599)); //case one is simple subtraction and check if difference is 1, case two checks for 00:00 and 59:59
}

void updateTimeArray(void){
  oldTimeArray[0] = newTimeArray[0];
  oldTimeArray[1] = newTimeArray[1];
  oldTimeArray[2] = newTimeArray[2];
  oldTimeArray[3] = newTimeArray[3];
  oldTimeArray[4] = newTimeArray[4];
  oldTimeArray[5] = newTimeArray[5];
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
