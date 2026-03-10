void intro(){
  background(200);
  
  fill(255);
  rect(width/2, height/2, 200, 100);
  
  fill(0);
  textSize(40);
  text("START", width/2, height/2);
   
  lightStep = 0;
  lastLightTime = millis();
  goTime = 0;
  lightsOut = false;
  finished = false;
  falseStart = false;
  ra = rb = rc = rd = re = 0;
  randomDelay = int(random(500,3000));
  
  
  PFont F1 = createFont("edgeracer.ttf", 100);
  fill(200,0,0);
  textFont(F1);
  text("F1", width/2, height/2 - 100);
  PFont basic = createFont("First Bunny.otf",50);
  textFont(basic);
  
}

void introClick(){
  if (mouseX>width/2 -100 && mouseX<width/2 +100 && mouseY > height/2 -50 && mouseY < height/2 +50){
    mode = GAME;
   car.play();
  }
}
