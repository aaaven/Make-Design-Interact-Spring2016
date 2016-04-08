import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Hello__WPP_School_students__ extends PApplet {

public void setup() {  // initialize the window 
   
  background(255);
  fill(20, 120, 120);
  textSize(14);
}

public void draw() {
  text("Hello, WPP School Students", 100, 80);
  text("This is Aven Speacking....", 150, 110);
}
  public void settings() {  size(400, 200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Hello__WPP_School_students__" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
