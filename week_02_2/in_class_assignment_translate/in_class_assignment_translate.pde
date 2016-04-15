/* 
created by Aven in class with student, 2016, April 7
"make design interact", week 02, second class
you can find more info (like students' work and syllabus) about this class at makedesigninteract.wordpress.com
*/

float sunR = 0;
float earthR = 0;
int earthX = 80;
int sunX = 150;
int moonR = 30;
float moonPlus = 0.5;
void setup() {
  size(800, 600);
}
void draw() {
  background(250);
 // pushMatrix();
  translate(width/2, height/2);
  //translate to new origin
  noStroke();
  fill(0, 255, 0);
  ellipse(0, 0, 10, 10); //draw center point
  rotate(sunR);
  fill(255, 0, 0);
  ellipse(sunX, 0, 40, 40);//draw sun
  sunR = sunR +0.05;
  
  //draw earth
 // pushMatrix();
  translate(sunX, 0);//translate to sun center
  fill(0, 0, 255);
  rotate(earthR);
  ellipse(earthX, 0, 25, 25);//draw earth
  earthR = earthR + 0.1;
  
  //draw Moon
  //pushMatrix();
  translate(earthX,0);//translate to earth center
  fill(0,125,125);
  rotate(moonR);
  ellipse(moonR, 0, 10, 10);//draw moon
  moonR += moonPlus;
  //popMatrix();
  //popMatrix();
  //popMatrix();
}