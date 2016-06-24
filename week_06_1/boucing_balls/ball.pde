class Ball {
  float x, y;
  float speedX = random(2,10);
  float speedY = random(0,5);
  Ball(float x_, float y_) {
    x= x_;
    y= y_;
  }
  void run() {
    display();
    move();
    bounce();
    gravity();
  } 
  void display() {
    smooth();
    noStroke();
    fill(255);
    ellipse(x, y, r, r);
  } 
  void move(){
    x += speedX;
    y += speedY;
  }
  void bounce(){
    if (x > width - r || x < r){
    speedX *= -1;
    }
    if(y > height-r || y < r){
     speedY *= -1; 
    }
  } 
  void gravity(){
    speedY += 0.2;
  } 
}