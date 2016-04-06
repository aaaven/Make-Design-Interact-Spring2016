
float rot = 0;

void setup() {
  size(720, 720);
  frameRate(60);
  smooth();
  noStroke();
}

void draw() {
  frameRate(100);
  background(190);
  fill(255, 255, 0);
  ellipse(width/2, height/2, 10, 10);


  pushMatrix();
  translate(width/2, height/2);
  rotate(rot*9);
  rot += 0.001;
  noFill();
  ellipse(0, 0, 300, 300);
  fill(255, 0, 0);
  ellipse(150, 150, 50, 50);

  pushMatrix();
  translate(150, 150);
  rotate(rot*20);
  fill(0, 0, 255);
  ellipse(50, 50, 30, 30);

  pushMatrix();
  translate(50, 50);
  rotate(rot*50);
  fill(255);
  ellipse(30, 30, 15, 15);
  popMatrix();

  popMatrix();
  popMatrix();
}

