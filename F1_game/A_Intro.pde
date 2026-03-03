void intro(){
  background(200);
  rect(width/2, height/2, 200, 100);
}

void introClick(){
  if (mouseX>width/2 -100 && mouseX<width/2 +100 && mouseY > height/2 -50 && mouseY < height/2 +50){
    mode = GAME;
  }
}
