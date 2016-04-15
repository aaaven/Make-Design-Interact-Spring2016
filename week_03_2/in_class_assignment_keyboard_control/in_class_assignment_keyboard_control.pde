/* 
 created by Aven in class with student,2016, April 14
 "make design interact", week 03, second class
 you can find more info (like students' work and syllabus) about this class at makedesigninteract.wordpress.com
 */

float d = 50, x = 26, y=26, r =0, g=0, b=0, xPlus =5, yPlus =5, rPlus =5, gPlus =5, bPlus =5;
void setup() {
  size(500, 300);
}
void draw() {
  noStroke();
  background(255);
  fill(r, g, b);
  ellipse(x, y, d, d);
  x+=xPlus;   //x=x+aven;
  y+= yPlus;  //  y=x+chenlin;
  //change y directions
  /* if (y > height - 0.5*d) { //hit bottom
   chenlin = -5;
   }
   if (y <0.5*d) { //hit top
   chenlin = 5;
   }
   */
  if (y > height - 0.5*d || y <0.5*d) {
    yPlus *=-1; //chenlin =-1*chenlin; when ball hit top and bottom, change direction
  }
  //change x directions
  if (x > width -0.5*d ||x < 0.5*d ) {
    xPlus *= -1; //aven =-1*aven;  when ball hit left and right,chanbe direction
  }

  if (keyPressed) { //if(keyPressed == true){ 
    //RGB color responde to RGB key press
    if (key == 'r' || key == 'R') {
      r += rPlus; //r += 1;  r = r+1;
      if (r >255 || r < 0) {
        rPlus *=-1;
      }
    } // R color
    if (key == 'g' || key == 'G') {
      g += gPlus; //g += 1;  g = g+1;
      if (g >255 || g < 0) {
        gPlus *=-1;
      }
    } //G color
    if (key == 'b' || key == 'B') {
      b += bPlus; //b += 1;  b = b+1;
      if (b >255 || b < 0) {
        bPlus *=-1;
      }
    }//B color

    println("r =  " + r + "g = "+ g +"b= " + b);

    switch (key) {
    case 'k': //speed up
      xPlus *= 1.1;
      yPlus *= 1.1;
      //yfjhgfjhgfjhgf
      break;
    case 'm'://slow down
      xPlus *= 0.9; //xPlus = xPlus *0.9;
      yPlus *= 0.9; //yPlus = xPlus * 0.9;
      break;
    }
  }
}
void keyPressed() {
  switch (key) {
  case 'w': //up
    y -= 5;
    break;
  case 's': //down
    y += 5;
    break;
  case 'a'://left
    x -= 5;
    break;
  case 'd'://right
    x += 5;
    break;
  }
}