int x,y;
void setup(){
  size(300,300);
  x=1;
  y=1;
}
void draw(){
  background(200);
  ellipse(150,150,x,y);
  x=x+2;
  y=y+2;
  if(x>300){
    x=1;
    y=1;
  }
}
