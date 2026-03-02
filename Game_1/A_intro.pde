void intro(){
  background(255,0,0);
  fill(255);
  rect(width/2,height/2,200,100);
  fill(0);
  textSize(30);
  text("START",width/2,height/2);
}

void introClick(){
  if (mouseX > width/2 -100 && mouseX< width/2 +100 && mouseY > height/2 -50 && mouseY < height/2 +50){
    mode = GAME;
    lives = 3;
    score = 0;
  }
}
