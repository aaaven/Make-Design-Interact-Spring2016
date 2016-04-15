/* 
created by Aven in class with student, 2016, April 14
"make design interact", week 03, second class
you can find more info (like students' work and syllabus) about this class at makedesigninteract.wordpress.com
*/


void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  //line(mouseX, mouseY, pmouseX, pmouseY);
  //draw arrow
  drawArrow(mouseX, mouseY, pmouseX, pmouseY);
  if (mousePressed){
  saveFrame("001.jpg");
  }
}

void drawArrow(float mx, float my, float px, float py) {

  float x = 0.5*(px-mx);
  float y = 0.5*(py-my);
  if (x<10) {
    x=10;
  }
  if (y<12) {
    y=12;
  }
  strokeWeight(0.2*abs(int(x)));
  translate(mx, my);
  line(0, 0, 2*x, 2*y);
  rotate(-PI/6);

  line(0, 0, x, y);
  rotate(PI/3);
  line(0, 0, x, y);
}