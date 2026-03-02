void game (){
  background(0,255,0);
  fill(255);
  strokeWeight(5);
  ellipse(x,y,100,100);
  x = x+vx;
  y = x+vy;
  fill(0);
  textSize(30);
  text("SCORE: " +score, width/2, 30);
  text("LIVES: " +lives, width/2, 60);
  
  x = x+vx;
  y = y + vy;
  
  if (x > width - 50 || x< 50){
    vx = vx * -1;
    
  }
  if (y > 750 || y <50){
    vy = vy * -1;
  }
}

void gameClick() {
  if (dist(mouseX, mouseY, x, y)<=50){
    score = score+1;
  
  }
  else {
    lives = lives - 1;
  }
  
  if (lives<1){
    mode = GAMEOVER;
  }
  
}
