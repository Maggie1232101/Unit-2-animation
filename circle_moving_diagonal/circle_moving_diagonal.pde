// circle moving diagonal
int x,y;
void setup(){
  size(300,300);
  x=1;
  y=1;
}
void draw(){
  background(200);
  ellipse(x,y,75,75);
  x=x+2;
  y=y+2;
  if(x>350){
    x=-50;
    y=-50;
  }
}
