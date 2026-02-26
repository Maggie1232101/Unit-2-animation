int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

void setup() {
  size(800,800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
}

void draw() {
  if (mode == INTRO){
    intro();
  } 
  else if (mode == GAME) {
    game();
  }
  else if (mode == GAMEOVER) {
    gameover();
  }
  else {
    println("ERROR mode = " + mode);
  }
}
