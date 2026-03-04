void game(){
  background(200);
 
  
  fill(100);
  rect(width/2, height/2 - 75, 100,400);
  rect (width/2 - 150, height/2 -75, 100, 400);
  rect (width/2 - 300, height/2 - 75, 100, 400);
  rect (width/2 +150, height/2 - 75, 100, 400);
  rect (width/2 +300, height/2 -75, 100, 400);
  fill(0);
  circle(width/2 - 300, height/2 -225, 75);
  circle(width/2 -300, height/2 -125, 75);
  //circle(width/2 -300, height/2 -25, 75);
  //circle(width/2 -300, height/2 +75, 75);
  circle(width/2 -150, height/2 -225, 75);
  circle(width/2 -150, height/2 -125, 75);
  circle(width/2 , height/2 -225, 75);
  circle(width/2, height/2 -125, 75);
  circle(width/2 +150, height/2 -225, 75);
  circle(width/2 +150, height/2 -125, 75);
  circle(width/2 +300, height/2 -225, 75);
  circle(width/2 +300,height/2 -125, 75);
  
  fill(ra,0,0);
  circle(width/2 -300, height/2 -25, 75);
  circle(width/2 -300, height/2 +75, 75);
  
  fill(rb,0,0);
   circle(width/2 -150, height/2 -25, 75);
  circle(width/2 -150, height/2 +75, 75);
  
  fill(rc,0,0);
   circle(width/2, height/2 -25, 75);
  circle(width/2, height/2 +75, 75);
  
  fill(rd,0,0);
   circle(width/2 +150, height/2 -25, 75);
  circle(width/2 +150, height/2 +75, 75);
  
  fill(re,0,0);
   circle(width/2 +300, height/2 -25, 75);
  circle(width/2 +300, height/2 +75, 75);
  
  time();
  
}

void gameClick(){
  if (!finished){
   if (!lightsOut){
     falseStart = true;
     mode = GAMEOVER;
   }
   else {
     reactionTime = (millis() - goTime);
     finished = true;
     mode = GAMEOVER;
   }
  }
}

void time(){
 if (!lightsOut){
   
 if (lightStep < 5 && millis() - lastLightTime > 1000){
   lightStep++;
   lastLightTime = millis();
 }
 if (lightStep >= 1) ra = 200;
 if (lightStep >=2) rb = 200;
 if (lightStep >=3) rc = 200;
 if (lightStep >= 4) rd = 200;
 if (lightStep >= 5) re = 200;
 
 if (lightStep == 5 && millis() - lastLightTime >randomDelay){
     ra = rb = rc = rd = re = 0;
     lightsOut = true;
     goTime = millis();
   }
 }
}
