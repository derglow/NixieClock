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

uint8_t GPShourDig1;
uint8_t GPShourDig2;
uint8_t GPSminuteDig1;
uint8_t GPSminuteDig2;
uint8_t GPSsecondDig1;
uint8_t GPSsecondDig2;

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
}


byte perc=5;
#define minPerc 3 //3 goes with 17,5 goes with 30
#define maxPerc 10
#define numCycles 17 //3 goes with 17, 5 goes with 30
byte ticker1=0;
byte ticker2=0;
byte ticker3=0;

void loop() {

  if(ticker1<perc){
    sendSixDigits(ticker3,ticker3,ticker3,ticker3,ticker3,ticker3);
    ticker1++;
  }
  else{
    sendSixDigits(10,10,10,10,10,10);
    ticker1++;
  }
  if(ticker1>=maxPerc){
    ticker1=0;
    ticker2++;
  }
  if(ticker2>=numCycles){
    perc++;
    if(perc>=maxPerc){
      perc=minPerc;
    ticker3++;
    }
    ticker2=0;
  }
    if(ticker3>=10){
      ticker3=0;
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

void storeTime(void){
  GPShourDig1 = asciiToBin(serialReceiveBuffer[7]);
  GPShourDig2 = asciiToBin(serialReceiveBuffer[8]);
  GPSminuteDig1 = asciiToBin(serialReceiveBuffer[9]);
  GPSminuteDig2 = asciiToBin(serialReceiveBuffer[10]);
  GPSsecondDig1 = asciiToBin(serialReceiveBuffer[11]);
  GPSsecondDig2 = asciiToBin(serialReceiveBuffer[12]);
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
