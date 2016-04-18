
/*create by Aven at April 17th for make design interact,
you can find more about this class on makedesigninteract.wordpress.com*/
int pushButton = 2;
int knob = 8;
int buttonState = 0;
int yellow = 3;
int green = 4;
int blue = 5;
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  // make the pushbutton's pin an input:
  pinMode(pushButton, INPUT);
  //make the yellow,green,blue,(3,4,5) pin as output:
  pinMode(yellow, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
}


void loop() {
  // read the input pin:
  buttonState = digitalRead(pushButton);
  int knobValue = analogRead(A0) / 4;

  if (buttonState == 0) {
    digitalWrite(yellow, LOW); //yellow off
    digitalWrite(green, HIGH); //green on
  } else {
    digitalWrite(yellow, HIGH);//yellow on
    digitalWrite(green, LOW);//green off
  }

  analogWrite(blue, knobValue);//blue on
  // print out the state of the button:
  Serial.println(knobValue);
  delay(1);        // delay in between reads for stability
}



