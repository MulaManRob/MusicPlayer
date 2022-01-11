//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
 fullScreen(); //fullScreen(), displayWidth, displayHeight
  population();
  textSetup();
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Music/groove.mp3"); //able to pass absolute path, file name, and URL
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
}//End setup()

void draw() {
  powerButtonDraw();
}//End draw()

void keyPressed() {
  if (key == 'p' ll key== 'P') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >=song1.length()-3000 ) {println ("Here");
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}//End keyPressed()

void mousePressed() {
  powerButtonMousePressed();
}//End mousepressed()
