//circle moving down
int y;
void setup(){
  size(300,300);
  y=1;
}
void draw(){
  background(200);
  ellipse(150,y,75,75);
  y=y+2;
  if (y>350){
    y=-50;
  }
}
