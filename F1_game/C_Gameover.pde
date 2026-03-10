void gameover(){
  background(20);
  fill(255);
  rect(width/2, height/2 +150,200,100);
  fill(0);
  textSize(25);
  text("BACK TO HOME", width/2, height/2 +150);
  fill(255);
  
  textSize(40);
  text("Best Reaction: " +bestReaction/1000.0, width/2, height/2);
  if (falseStart){
    text("FALSE START!", width/2, height/2 +50);
  }
  else{
    text("Reaction Time:" + reactionTime / 1000.0 +"s", width/2, height/2 +50);
  }
  
  PFont basic = createFont("First Bunny.otf",50);
  PFont Formula = createFont("Formula 1.ttf",500);
  textFont(Formula);
  text("4", width/2, height/2 - 175);
  textFont(basic);
}

void gameoverClick(){
  if (mouseX > width/2 - 100 && mouseX<width/2+100 && mouseY>height/2+100 && mouseY<height/2+200){
    mode = INTRO;
  }
  
}
