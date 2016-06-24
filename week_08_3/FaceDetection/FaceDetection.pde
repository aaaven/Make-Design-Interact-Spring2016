import gab.opencv.*;
import java.awt.Rectangle;

OpenCV opencv;
Rectangle[] faces;

void setup() {
  //opencv = new OpenCV(this, "thumb_IMG_1324_1024.jpg");
  opencv = new OpenCV(this,"thumb_IMG_1336_1024.jpg");
  size(384,512);

  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = opencv.detect();
}

void draw() {
  scale(0.5);
  image(opencv.getInput(), 0, 0);

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  for (int i = 0; i < faces.length; i++) {
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    
  }
}