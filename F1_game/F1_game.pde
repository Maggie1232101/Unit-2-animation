int d;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
int mode;

void setup(){
  size(800,800);
  mode = INTRO;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
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
