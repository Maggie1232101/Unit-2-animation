//cicle moving right and expanding
int x,w;
void setup(){
  size(300,300);
  x=1;
  w=1;
}
void draw(){
  background(200);
  ellipse(x,150,w,w);
  x=x+3;
  w=w+1;
  if(x>375){
    x=-50;
    w=0;
  }
}
