/* 
created by Aven in class with student, 2016, April 11
"make design interact", week 03, first class
you can find more info (like students' work and syllybus) about this class at makedesigninteract.wordpress.com
*/


float a = 200; //line width
float angle = 0;
void setup() {
  size(800, 600);
}
void draw() {
  //mouseX, mouseY
  //line(startPt_x,startPt_y,endPt_x,endPt_y);
  //mousePressed   boolean expression  true flase
  if (mousePressed) {
    translate(mouseX, mouseY);
    rotate(angle);
    // line(-0.5*a, 0, 0.5*a, 0);
    drawLine(-0.5*a, a);
    angle += 0.05;
  }
}

void drawLine(float start_x, float line_w) {
  translate(start_x, 0);
  strokeWeight(1);
  for (int richard = 0; richard < 256; richard ++) {
   // stroke(richard,255,255,50);
    float aven = map(richard, 0, 255, 0, line_w);
    point(aven, 0);
  }
}