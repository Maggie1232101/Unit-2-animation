// dvd screen

int x,y,z;
int r,g,b;
int vx,vy;
int randomNumber;
void setup(){
  size(1000,800);
  vx = 2;
  vy = 2;
  r = 255;
  g = 0;
  b = 0;
  randomNumber = int(random(1,5));
}

void draw(){
  background(0);
  dvd(x,y);
  x= x+vx;
  y=y+vy;
  if (x>900){
    vx=-2;
    z = int(random(1,5));
  }
  if (y>700){
    vy=-2;
    
     z = int(random(1,5));
  }
  if (x<0){
    vx=2;
    
     z = int(random(1,5));
  }
  if (y<0){
    vy=2;
    
     z = int(random(1,5));
  }
  if (x == 0 && y == 0){
    vx=0;
    vy=0;
  }
  if (x == 900 && y == 0){
    vx = 0;
    vy = 0;
  }
  if (x == 900 && y == 700){
    vx = 0;
    vy = 0;
  }
  if (x == 0 && y == 700){
    vx = 0;
    vy = 0;
  }
  if (z == 1){
    r = 255;
    g = 0;
    b = 0;
  }
  if (z == 2){
    r = 0;
    g = 255;
    b = 0;
  }
  if (z == 3){
    r = 0;
    g = 0;
    b = 255;
  }
  if (z == 4){
    r = 255;
    g = 255;
    b = 0;
  }
  
}

void dvd(int x, int y){
  pushMatrix();
  
  translate(x,y);
  
  fill(r,g,b);
  rect(0,0,100,100);
  
  PFont DVDFont = createFont("TI logoso TFB.ttf",50);
  textFont(DVDFont);
  fill(0);
  textSize(50);
  text("j",5,70);
  
  popMatrix();
}
