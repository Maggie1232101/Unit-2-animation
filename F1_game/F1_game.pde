import processing.sound.*;
int lightStep = 0;
int lastLightTime = 0;
int goTime = 0;
boolean lightsOut = false;
float reactionTime = 0;
float bestReaction = 999999;
boolean started = false;
boolean finished = false;
boolean falseStart = false;
int ra,rb,rc,rd,re;
int randomDelay;
SoundFile car;
SoundFile buzz;

final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
int mode;

void setup(){
  size(800,800);
  mode = INTRO;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  ra = 0;
  rb = 0;
  rc = 0;
  rd = 0;
  re = 0;
  
  car = new SoundFile(this, "soundreality-f1-151254.mp3");
  buzz = new SoundFile(this, "rikk_nextsoft-error_sound-221445.mp3");
  
}

void draw(){
  if (mode == INTRO){
    intro();
  }
  else if (mode == GAME){
    game();
  }
  else if (mode == GAMEOVER){
    gameover();
  }
  else {
    println("ERROR mode = " +mode);
  }
  
}
