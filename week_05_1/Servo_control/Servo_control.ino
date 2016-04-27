void setup() {
  pinMode(3, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(4, INPUT);
  pinMode(8, INPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
}

void loop() {

  int chenlin = analogRead(A0);
  int zhudaipin = analogRead(A1);
  int caitianchen = analogRead(A2);
  int chenyujie = digitalRead(4);
  int yangsiyu = digitalRead(8);
  analogWrite(3, chenlin);
  analogWrite(5, zhudaipin);
  analogWrite(6, caitianchen);
  digitalWrite(11, chenyujie);
  digitalWrite(12, yangsiyu);
}
