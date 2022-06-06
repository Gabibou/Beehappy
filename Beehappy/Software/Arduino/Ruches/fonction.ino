//----------------------------- Sleep/WakeUp function -----------------------------
void SleepMicro(){
  SLPCTRL[0][0] = 1;  //Sleep Mode idle GO
}

void WakeUpMicro(){
  SLPCTRL[0][0] = 0;  //WakeUp
}
void SleepModeSetup(){
  SLPCTRL[0][0] = 0;  //DO not sleep on startup
  SLPCTRL[0][1] = 0;
  SLPCTRL[0][2] = 0;  //Sleep mode Idle
}

void RTCSetup(){
  RTC[0][7] = 1; //Enable RTC during sleep mode
  RTC[0][0] = 1; //Enable RTC
  RTC[2][0] = 1; //Enable interupt overflow
  RTC[2][1] = 0; //Disable interupt comparator
  RTC[7][1] = 1;
  RTC[7][0] = 0;  //Choose the 32.768Khz external
}

//----------------------------- DHT function -----------------------------
long ReadTemp(){
  float temp = dht.readTemperature();
  return temp;
}

long ReadHum(){
  float hum = dht.readHumidity();
  return hum;
}

//----------------------------- LoraWan function -----------------------------
void SendAll(){
  if(ChoixVoie[0]==1){
    Encapsulation(Data1,1);               //Send data for Channel 1 if active
  }
  Traitement_data_parametre(); 
  delay(500);
  if(ChoixVoie[1]==1){
    Encapsulation(Data2,2);               //Send data for Channel 1 if active
  }
  Traitement_data_parametre(); 
  delay(500);
  if(ChoixVoie[2]==1){
    Encapsulation(Data3,3);               //Send data for Channel 1 if active
  }
  Traitement_data_parametre(); 
  delay(500);
  if(ChoixVoie[2]==1){
    Encapsulation(Data4,4);               //Send data for Channel 1 if active
  }
  Traitement_data_parametre(); 
}

int chartoint(char carac){
  int res = 0;
  switch (carac) {
  case 'a':
    res = 10;
    break;
  case 'b':
    res = 11;
    break;
  case 'c':
    res = 12;
    break;
  case 'd':
    res = 13;
    break;
  case 'e':
    res = 14;
    break;
  case 'f':
    res = 15;
    break;
  default:
    res = carac - '0';
    break;
  }
  return res;
}
//Trame entree = 30 31 30 30 30 30 33 30 -> Trame sortie : 01 00 00 03 
  String convertTrame2(String TrameEntre){
  String returnValue = "";
  for(int i=0;i<8;i++){
    String TrameCut = TrameEntre.substring((i*2),((i*2)+2));
    if(TrameCut != ""){
      int Octet = TrameCut.toInt();
      TrameCut = String(Octet-30);    //reutilisation variable TrameCut  
    }
    else{
        returnValue = "";
    }
    returnValue = returnValue + TrameCut;
    delay(500);
  }
  return returnValue;
}


void Traitement_data_parametre(){
  String CodeRecu = convertTrame2(message_entrant()); 
  if(CodeRecu != ""){
     if(CodeRecu[1] == '1'){
      
        byte quellevoie = CodeRecu[7] - '0';  
          ChoixVoie[quellevoie] = CodeRecu[5] - '0';
          
     }
     else if(CodeRecu[1] == '2'){
        NombreMoyennePriseValeur = ((chartoint(CodeRecu[6])*16)+ chartoint(CodeRecu[7]));
     }
     
     else if(CodeRecu[1] == '3'){
        Tar(chartoint(CodeRecu[7]));
     }
     
     else if(CodeRecu[1] == '4'){
       NombreMesureJours = ((chartoint(CodeRecu[6])*16)+ chartoint(CodeRecu[7]));    
     }   
  }
}

//Fonction pemettant de récupérer les données venant de ttn --> 
String message_entrant(){
  String messageRecu ="";
  String messagetuner = "";
  String retour = "";
  messageRecu = LoraSendCommand("AT+RECV=?\r\n");
  for(int i=0;i<=messageRecu.length();i++){
    if(messageRecu[i] != '\n'){
      messagetuner += messageRecu[i];
    }
  }
  for(int i=0;i<=messagetuner.length();i++){
    if((messagetuner[i] == '0')&&(messagetuner[i+1] == ':')){
      retour = "";
    }
    else if((messagetuner[i] == '9')&&(messagetuner[i+1] == ':')){
      for(byte j=0;j<16;j++){
        retour += messagetuner[i+2+j];
      }
    }
  }
  return retour;
}

//Permet d'envoyer des données encapsuler 
void Encapsulation(long Donnee,byte canal){
  String Poids,voie,Temp,Humidity;
  Poids = String(Donnee,HEX);
  voie = String(canal,HEX);
  Temp = String(ReadTemp(),HEX);
  Humidity = String(ReadHum(),HEX);
  while(Poids.length() !=6){
    Poids = "0" + Poids;
  }
  while(voie.length() !=2){
    voie = "0" + voie;
  }
  while(Temp.length() !=2){
    voie = "0" + Temp;
  }
  while(Humidity.length() !=2){
    voie = "0" + Humidity;
  }
  SendData(Poids + voie + Temp + Humidity);
} 

//Fonction qui prend un string et qui l'envoie sur ttn
void SendData(String trame){
  LoraSendCommand("AT+SEND=2:"+ trame +"\r\n");
}

//Fonction qui se connecte a ttn
void LoraConnection(){
    LoraSendCommand("AT+JOIN=1:0:10:8\r\n");
}

void LoraSetup(){
  LoraSendCommand("AT+APPKEY=AC1F09FFFE0549EAAC1F09FFF8683172\r\n");
  LoraSendCommand("AT+APPEUI=AC1F09FFF8683172\r\n"); 
  LoraSendCommand("AT+DEVEUI=AC1F09FFFE0549EA\r\n"); 
}

String LoraSendCommand(String atComm){
   String response = ""; 
   Serial.print(atComm);
   while(Serial.available()){ 
     response = Serial.readString(); 
  } 
  return response;
}


//------------------------------------ ADS1241 function ------------------------------------


void Tar(byte port){
  switch (port) {
  case 1:
      Tar1 = Data1;
    break;
  case 2:
      Tar2 = Data2;
    break;
  case 3:
     Tar3 = Data3;
    break;
  case 4:
    Tar4 = Data4;
    break;
   }
}


void MesureALl(int NombreMoy){
  if(ChoixVoie[0] == 1){
    Moyenne(NombreMoy,1);
  }
  if(ChoixVoie[1] == 1){
    Moyenne(NombreMoy,2);
  }
  if(ChoixVoie[2] == 1){
    Moyenne(NombreMoy,3);
  }
  if(ChoixVoie[3] == 1){
    Moyenne(NombreMoy,4);
  }
}


void Moyenne(int NombreMoyenne,byte port){
  long Moyenne = 0;
  for(int i=0;i<NombreMoyenne;i++){
    Moyenne = Moyenne + MesureDonnees(port);
  }
  switch (port) {
  case 1:
       Data1 = (Moyenne/NombreMoyenne) - Tar1;
    break;
  case 2:
       Data2 = (Moyenne/NombreMoyenne) - Tar2;
    break;
  case 3:
       Data3 = (Moyenne/NombreMoyenne) - Tar3;
    break;
  case 4:
      Data4 = (Moyenne/NombreMoyenne) - Tar4;
    break;
  }
}


long MesureDonnees(byte port){
  byte Choix_MUX;   //Valeur a entrer pour chosir le mux
  byte MSB,MID,LSB;
  
  switch (port) {
  case 1:
      Choix_MUX = 0x10; //Ain0 et Ain1
    break;
  case 2:
      Choix_MUX = 0x32; //Ain2 et Ain3
    break;
  case 3:
      Choix_MUX = 0x54; //Ain4 et Ain5
    break;
  case 4:
     Choix_MUX = 0x76; //Ain6 et Ain7
    break;
}
  writeRegister(0x01,Choix_MUX); //On valide le choix des entrée
  
  digitalWrite(ChipSelect,LOW);
  delay(1); 
  //recuperation des trois octets
  SPI.transfer(0x01);
  delay(1);
  MSB = SPI.transfer(0xFF);
  delay(1);
  MID = SPI.transfer(0xFF);
  delay(1);
  LSB = SPI.transfer(0xFF);
  delay(1);
  digitalWrite(ChipSelect,HIGH);
  return((MSB*65536)+(MID*256)+LSB);
}

void ChoixGain(byte gain){
  writeRegister(0x00,gain);
}

void ReveilleAds(void){
  digitalWrite(ChipSelect,LOW);
  delay(1);
  SPI.transfer(0xAB);
  delay(1);
  digitalWrite(ChipSelect,HIGH);
}

//Fonction qui met en veille l'ads
void SleepADS(void){
  digitalWrite(ChipSelect,LOW);
  delay(1); 
  SPI.transfer(0xFD);
  delay(1); 
  digitalWrite(ChipSelect,HIGH);
}

void Ads_reset(){
  digitalWrite(ChipSelect,LOW); 
  delay(1); 
  SPI.transfer(0xFE);
  delay(1);
  digitalWrite(ChipSelect,HIGH);
}


void writeRegister(uint8_t reg,uint8_t valeur)
{
  digitalWrite(ChipSelect,LOW);   
  SPI.transfer(0x50 | reg);       
  delay(1);
  SPI.transfer(0x00);                 
  delay(1);
  SPI.transfer(valeur);              
  digitalWrite(ChipSelect,HIGH);  
}
