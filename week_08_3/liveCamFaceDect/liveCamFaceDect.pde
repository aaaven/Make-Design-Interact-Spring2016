import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
//PImage aven;
//PImage Aven;
PImage sevi;
void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  //aven = loadImage("logo_for_aven_small.jpg");
  //Aven = loadImage("logo_for_aven_small_copy.png");
  sevi = loadImage("pic.jpg");
  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);
  image(video, 0, 0 );
  noFill();
  noStroke();
  Rectangle[] faces = opencv.detect();
  println(faces.length);
  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
     tint(255, 200);
    image(sevi, 0.96*faces[i].x, 0.82*faces[i].y, 1.15*faces[i].width, 1.38*faces[i].height); 
    String name = "Sevi No." + i;
    text(name,faces[i].x,faces[i].y+1.29*faces[i].height);
    noTint();
  }
}

void captureEvent(Capture c) {
  c.read();
}