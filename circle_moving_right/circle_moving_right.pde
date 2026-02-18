//circle right
int x;
void setup(){
  size(300,300);
  x=1;
}
void draw(){
  background(200);
  ellipse(x,150,75,75);
  x=x+2;
  if(x>350){
    x=-50;
  }
}
