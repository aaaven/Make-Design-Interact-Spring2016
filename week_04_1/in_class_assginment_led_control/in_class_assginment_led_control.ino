int button = 2;
int yellow = 3;
int green = 4;
int blue = 5;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(button, INPUT);
  pinMode(yellow, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int buttonStatus = digitalRead(button);
  int knob = analogRead(A0)/4;
  Serial.println(knob);
  analogWrite(blue,knob);
  if(buttonStatus == 0){
    //Serial.println("button off");
    //light up yellow
    digitalWrite(yellow,HIGH);
    digitalWrite(green,LOW);
  }else{
    //Serial.println("button on");
    //light up green
    digitalWrite(green,HIGH);
    digitalWrite(yellow,LOW);
  }
}
