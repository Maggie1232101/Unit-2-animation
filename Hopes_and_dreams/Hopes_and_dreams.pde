int x,y;

PImage img;
void setup(){
  size(600,600);
  img = loadImage("Airplane_Clipart.png");
}

void draw(){
background(255);
fill(115,115,115);
rect(0,400,600,200);
fill(165,159,123);
rect(0,0,10,400);
rect(200,0,10,400);
  // image(img, 0,0, 600,600);
//plane(300,155, 0.5);
}

void plane(int x, int y,float s){
  pushMatrix();
  rectMode(CENTER);
  translate(x,y);
  scale(s);
  fill(200);
  rotate(radians(-23));
  rect(0,0,400,90);
  fill(200);
  arc(200,15, 190,120,3*PI/2,TWO_PI);
  arc(200,10,190,70,0,PI/2);
  stroke(200);
  strokeWeight(3);
  strokeJoin(ROUND);
  triangle(-10,45,-130,220,110,45);
  triangle(-50,-45,-130,-150,50,-45);
  triangle(-200,-45,-260,-120,-200,45);
  triangle(-200,45,-260,-120,-260,-10);
  arc(-200,-10, 120,110,PI/2,PI);
  
  
  popMatrix();
}
