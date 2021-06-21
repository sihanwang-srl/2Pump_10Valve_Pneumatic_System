const int v0Pin = 1;
const int v1Pin = 2;
const int v2Pin = 3;
const int v3Pin = 4;
const int v4Pin = 5;
const int v5Pin = 6;
const int v6Pin = 7;
const int v7Pin = 8;
const int v8Pin = 9;
const int v9Pin = 10;
long target = 0;

const int pPin = 11;
const int nPin = 12;
long error;
String readings;
int dropping_flag = 0;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);   // We'll send debugging information via the Serial monitor
  pinMode(v0Pin, OUTPUT);
  pinMode(v1Pin, OUTPUT);
  pinMode(v2Pin, OUTPUT);
  pinMode(v3Pin, OUTPUT);
  pinMode(v4Pin, OUTPUT);
  pinMode(v5Pin, OUTPUT);  
  pinMode(v6Pin, OUTPUT);
  pinMode(v7Pin, OUTPUT);
  pinMode(v8Pin, OUTPUT);
  pinMode(v9Pin, OUTPUT);
  digitalWrite(v0Pin,LOW);
  digitalWrite(v1Pin,LOW);
  digitalWrite(v2Pin,LOW);
  digitalWrite(v3Pin,LOW);
  digitalWrite(v4Pin,LOW);
  digitalWrite(v5Pin,LOW);
  digitalWrite(v6Pin,LOW);
  digitalWrite(v7Pin,LOW);
  digitalWrite(v8Pin,LOW);
  digitalWrite(v9Pin,LOW);
  analogWrite(pPin,0);
  analogWrite(nPin,0);

  
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    // read the incoming byte:
    readings = Serial.readStringUntil('d');
    if (readings.indexOf("v")== 0){
      if (readings.charAt(1)=='0'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v0Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v0Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='1'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v1Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v1Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='2'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v2Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v2Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='3'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v3Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v3Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='4'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v4Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v4Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='5'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v5Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v5Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='6'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v6Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v6Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='7'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v7Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v7Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='8'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v8Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v8Pin, HIGH);
        }
      }
      else if (readings.charAt(1)=='9'){
        if (readings.charAt(2)=='0'){
          digitalWrite(v9Pin, LOW);
        }
        else if (readings.charAt(2)=='1'){
          digitalWrite(v9Pin, HIGH);
        }
      }

      
    }
      
    
    if (readings.indexOf("p") ==0){
        readings.remove(0,1);
        analogWrite(pPin, 2.55*readings.toFloat());
    }

    if (readings.indexOf("n") ==0){
        readings.remove(0,1);
        analogWrite(nPin, 2.55*readings.toFloat());
    } 

    if (readings.indexOf("s") ==0){
      readings.remove(0,1);
      target = readings.toInt();
    }
}

if (target != 0){
  if (dropping_flag ==0){ 
      if (analogRead(A10) < target -50){
        analogWrite(pPin,255);
        digitalWrite(v9Pin,LOW);
      }
      
      else if (analogRead(A10) < target){
        analogWrite(pPin,255*min(max(0.5/500*(target-100)+0.5,0.5),1));
        digitalWrite(v9Pin,LOW);
      }
//      if (analogRead(A10) < target){
//        analogWrite(pPin,255*min(max(0.5/30*(target-analogRead(A10))+0.5,0.5),1));
//      }
      else if (analogRead(A10) < target + 10){
        analogWrite(pPin,0);
        digitalWrite(v9Pin,LOW);
  
      }
      else {
        analogWrite(pPin,0);
        digitalWrite(v9Pin,LOW);
      }  
    
  }
  
  if (dropping_flag ==1){
    digitalWrite(v9Pin,HIGH);
  }
  
  if (dropping_flag == 1 & analogRead(A10) < max(target -100,150)){
    dropping_flag = 0;
  }
  
  if (analogRead(A10) > target + 5){
    dropping_flag = 1; 
  }
}
//Serial.print(target);
//Serial.print(",");
//Serial.println(analogRead(A10));
//delay(2);
Serial.print(analogRead(A0));
Serial.print(";");
Serial.print(analogRead(A1));
Serial.print(";");
Serial.print(analogRead(A2));
Serial.print(";");
Serial.print(analogRead(A3));
Serial.print(";");
Serial.print(analogRead(A4));
Serial.print(";");
Serial.print(analogRead(A5));
Serial.print(";");
Serial.print(analogRead(A6));
Serial.print(";");
Serial.print(analogRead(A7));
Serial.print(";");
Serial.print(analogRead(A9));
Serial.print(";");
Serial.print(analogRead(A10));
Serial.print(";"); 

Serial.print(micros());
Serial.println("!");
}
