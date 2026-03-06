int x,y,vx,vy;
float s;

PImage img;
void setup(){
  size(600,600);
  img = loadImage("Airplane_Clipart.png");
  x = -50;
  y = 450;
  vx = 2;
  vy= -1;
  
  
}

void draw(){
background(148,206,232);
plane(x,y,0.33);
x = x+vx;
y = y +vy;
if (x>650 && y<0){
  x = -50;
  y = 450;
}

strokeWeight(1);
//floor
fill(115,115,115);
stroke(115,115,115);
rect(0,400,600,200);
//window
fill(165,159,123);
rect(0,0,10,400);
rect(200,0,10,400);
rect(400,0,10,400);
rect(590,0,10,400);
rect(0,0,600,10);
rect(0,400,600,10);

//shadows
fill(121,114,72);
rect(195,10,5,390);
rect(395,10,5,390);
rect(585,10,5,390);
rect(10,10,185,5);
rect(210,10,185,5);
rect(410,10,180,5);
fill(75);
rect(0,410,600,10);

//Highlights
fill(200,200,200,20);
noStroke();
arc(300,420,600,200,0,PI);
fill(200,200,200,50);
arc(600,0,600,300,PI/2,PI);


//suitcase
strokeJoin(ROUND);
noFill();
strokeWeight(10);
stroke(70);
arc(500,350,30,30,PI,TWO_PI);

strokeWeight(5);
stroke(50);
fill(50);
rect(475,350,50,75);
fill(60);
stroke(60);
rect(480,360,40,5);
rect(480,380,40,5);
rect(480,400,40,5);

fill(0);
stroke(0);
ellipse(475,425,10,10);
ellipse(525,425,10,10);

//gate
fill(150,150,185);
stroke(150,150,185);
rect(60,0,10,110);
rect(180,0,10,110);
fill(0,0,120);
stroke(0,0,120);
strokeWeight(20);
rect(50,115,150,50);

PFont gate = createFont("Chunkfive Ex.ttf", 30);
textFont(gate);
textAlign(CENTER);
fill(222,181,18);
text("Gate 505 ->",125,150);

  // image(img, 0,0, 600,600);
//plane(300,155, 0.5);
}

void plane(int x, int y,float s){
  pushMatrix();
  pushStyle();
  
  stroke(150);
  strokeWeight(30);
  strokeJoin(ROUND);
  rectMode(CENTER);
  translate(x,y);
  scale(s);
  
  fill(150);
  rotate(radians(-23));
  rect(0,0,400,90);
  
  arc(200,15, 190,120,3*PI/2,TWO_PI);
  arc(200,10,190,70,0,PI/2);

  triangle(-10,45,-130,220,110,45);
  triangle(-50,-45,-130,-150,50,-45);
  triangle(-200,-45,-260,-120,-200,45);
  triangle(-200,45,-260,-120,-260,-10);
  arc(-200,-10, 120,110,PI/2,PI);
  
  popStyle();
  popMatrix();
}
