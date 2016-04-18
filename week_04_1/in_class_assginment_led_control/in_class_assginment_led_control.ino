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
  Serial.println(buttonStatus);
  if(buttonStatus == 0){
    Serial.println("button off");
  }else{
    Serial.println("button on");
  }
}
