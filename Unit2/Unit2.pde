//animation basic
int x,y;
void setup() {
  size(300,300);
  x=0;
  y=0;
}
void draw() {
 background(200);
 ellipse(300-x,300-y,100,100);
 ellipse(x,y,100,100);
 x=x+1;
 y=y+1;
 if (x>350){
   x=-100;
 }
 if (y>350){
   y=-100;
 }
}
