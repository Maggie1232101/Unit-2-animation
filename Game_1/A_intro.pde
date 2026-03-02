void intro(){
  background(255,0,0);
  fill(255);
  rect(400,400,200,100);
  fill(0);
  textSize(30);
  text("START",400,400);
}

void introClick(){
  if (mouseX > 300 && mouseX< 500 && mouseY > 350 && mouseY < 450){
    mode = GAME;
  }
}
