void gameover(){
  background(20);
  fill(255);
  textSize(40);
  if (falseStart){
    text("FALSE START!", width/2, height/2);
  }
  else{
    text("Reaction Time:" + reactionTime / 1000.0 +"s", width/2, height/2);
  }
}

void gameoverClick(){
  
}
