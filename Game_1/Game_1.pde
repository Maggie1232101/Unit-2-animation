int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//Game variables
float x,y;
int score, lives;
float vx,vy;

void setup() {
  size(1000,800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  vx = 2;
  vy = 2;
  score = 0;
  lives = 3;
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
