import ddf.minim.*;
import ddf.minim.effects.*;

Minim minim[];//
AudioPlayer aven[];
int sound_number = 12;
void setup()
{
  size(512, 200, P3D);
  minim = new Minim[sound_number];
  aven = new AudioPlayer[sound_number];
  for (int i = 0; i < sound_number; i++) {
    String music_name = "aven" + i +".mp3";
    minim[i] = new Minim(this);
    aven[i] = minim[i].loadFile(music_name, 2048);
  }
}

void draw() {
  background(0);
  stroke(255);
  for (int j =0; j < sound_number; j++) {
    for (int i = 0; i < aven[j].bufferSize() - 1; i++) {
      line(i, 50  + aven[j].left.get(i)*200, i+1, 50  + aven[j].left.get(i+1)*200);
      line(i, 150 + aven[j].right.get(i)*50, i+1, 150 + aven[j].right.get(i+1)*50);
    }
  }
}

void keyPressed() {
  if ( key == 'a' ) {   
    pauseAll();
    aven[1].play();
  }
  if ( key == 's' ) {
    pauseAll();
    aven[2].play();
  }
  if ( key == 'd' ) { 
    pauseAll();
    aven[3].play();
  }
  if ( key == 'f' ) {
    pauseAll();
    aven[4].play();
  }
  if ( key == 'g' ) {
    pauseAll();
    aven[5].play();
  }
  if ( key == 'h' ) {  
    pauseAll();
    aven[6].play();
  }
  if ( key == 'j' ) {  
    pauseAll();
    aven[7].play();
  }
  if ( key == 'g' ) {   
    pauseAll();
    aven[8].play();
  }
  if ( key == 'h' ) {  
    pauseAll();
    aven[9].play();
  }
  if ( key == 'j' ) { 
    pauseAll();
    aven[10].play();
  }
  if ( key == 'k' ) {  
    pauseAll();
    aven[11].play();
  }
}

void pauseAll() {
  for (int k = 0; k < sound_number; k++) {
    if (aven[k].isPlaying()) {
      aven[k].pause();
    }
  }
}