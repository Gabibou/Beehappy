//Sleep mode isn't perfect

//----------------------------- DEF LIBRARY -----------------------------
#include <SPI.h>
#include <DHT.h>

//----------------------------- Parameter -----------------------------
byte NombreMesureJours = 24;            //Number measurement each day
byte NombreMoyennePriseValeur = 50;     //Number measurement for an average data
byte ChoixVoie[] = {1,1,1,1};           //Channel choosing 0 mean channel isn't use and 1 mean in use
long NumberSecondRTC =0;                   //Number of second after the last wake up
long NumberMesurementSecond =86400/NombreMesureJours;
byte Sleep = 0;                         //1=Sleep mode 0=wake up mode
//----------------------------- Pin and Data storage definition -----------------------------
const byte ChipSelect = 7;
const byte LED = 10;
const byte POWERDOWN = 9;
const byte DRDY = 8;
const byte DHTPIN = 11;
long Data1,Data2,Data3,Data4;                   //All channel data are store into this variable
long Tar1 = 0,Tar2 = 0 ,Tar3 = 0,Tar4 = 0;     //Tar value should be store here  

//------------------------------DHT Definition-----------------------------
#define DHTTYPE DHT22     //Can also bee DHT11 or DHT21
DHT dht(DHTPIN, DHTTYPE);
                                                             
//-----------------------------SETUP-----------------------------
void setup() {
  Serial.begin(9600);  
  pinMode(LED, OUTPUT);
  pinMode(POWERDOWN,OUTPUT);
  pinMode(DRDY,INPUT);
  pinMode(DHTPIN,INPUT);
  digitalWrite(POWERDOWN,HIGH);
  Serial.begin(9600);
  SPI.begin(); 
  SPI.setBitOrder(MSBFIRST);
  SPI.setDataMode(SPI_MODE1); 
  SPI.setClockDivider(SPI_CLOCK_DIV64);
  ChoixGain(0x07);  //Gain de 128
  LoraSetup();
  delay(500);
  LoraConnection();
  RTCSetup();
}
//-----------------------------Mode LOOP-----------------------------

void loop() {
  if(Sleep == 1){
    SleepMicro();
  }
  else{
    WakeUpMicro();
    delay(500);
    digitalWrite(LED,HIGH);
    MesureALl(NombreMoyennePriseValeur);  //Take all 4 channel mesurement
    SendAll();                            //Send all data
    SleepMicro();
    digitalWrite(LED,LOW);
    delay(500);
    SleepMicro();
  }
}

//This function is called every second and wake up the micro when 
void RTC(){
  NumberSecondRTC = NumberSecondRTC+1;
  if(NumberSecondRTC > NumberMesurementSecond){
    Sleep = 0;  //Wake up
    RTC[3]= 0x01; //Clear the RTC flag 
  }
  else{
    Sleep =1;
  }
  
}
