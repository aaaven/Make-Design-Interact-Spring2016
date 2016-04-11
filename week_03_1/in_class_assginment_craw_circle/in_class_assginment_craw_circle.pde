float radius = 40;
void setup() {  
  size(800, 600);
}
void draw() {
  stroke(0);
  strokeWeight(1);
  fill(100);
  ellipse(0.2*width, height/2, 2*radius, 2*radius);
  drawCircleA(0.4*width, height/2, radius);
  drawCircleB(0.6*width, height/2, radius);
}
void drawCircleA(float x, float y, float r) {
  fill(120, 120, 0);
  noStroke();
  ellipse(x, y, 2*r, 2*r);
}
void drawCircleB(float x, float y, float r) {
   //stroke(5);
  strokeWeight(2);
  for (int i =0; i < 256; i++) {
    pushMatrix();
    translate(x, y);
    stroke(i,255,255);
    float angle = map(i, 0, 255, 0, 2*PI);
    rotate(angle);
    point(r, 0);
    popMatrix();
  }
}