//two circles
int y;
void setup(){
  size(300,300);
  y=1;
}
void draw(){
  background(200);
  ellipse(100,y,50,50);
  ellipse(200,300-y,50,50);
  y=y+2;
  if(y>325){
    y=-50;
  }
}
