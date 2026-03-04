void intro(){
  background(200);
  rect(width/2, height/2, 200, 100);
   
  lightStep = 0;
  lastLightTime = millis();
  goTime = 0;
  lightsOut = false;
  finished = false;
  falseStart = false;
  ra = rb = rc = rd = re = 0;
  randomDelay = int(random(500,3000));
}

void introClick(){
  if (mouseX>width/2 -100 && mouseX<width/2 +100 && mouseY > height/2 -50 && mouseY < height/2 +50){
    mode = GAME;
  }
}
