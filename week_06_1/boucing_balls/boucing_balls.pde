Ball [] Balls = new Ball[200]; //declaration
int r =10;

void setup() {
  size(800, 600);
  for (int i = 0; i < Balls.length; i++) {  //initialize
    Balls[i] = new Ball(random(r, width-r), random(r, height-r));
  }
}
void draw() {
  background(0);
  for (int i = 0; i < Balls.length; i++) {
    Balls[i].run();
  }
}