int sensorPosPin = A2; // input pin for MR sensor
int rawPos;
int t=0;
int inByte=1;
bool test;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(sensorPosPin, INPUT); // set MR sensor pin to be an input

}

void loop() {
  // put your main code here, to run repeatedly:
  inByte = Serial.read();
  if (inByte=='2') test = true;
  if (inByte=='1') test = false;
  
  if (test==false) {
     calculatePosition();
     Serial.println(rawPos);
  }
  else {
     calculateVirtualPosition();
     Serial.println(rawPos);
  }
  delay(10);
}


void calculatePosition()
{
  rawPos = analogRead(sensorPosPin);
  
}
void calculateVirtualPosition()
{
  t=t+1;
  rawPos=512+512.0* sin(0.1*t);
}
