int x,y;
void setup(){
  size(600,600);
}

void draw(){
plane(300,300);
}

void plane(int x, int y){
  pushMatrix();
  translate(x,y);
  fill (255);
  stroke(255);
  rect(0,0,200,50);
  ellipse(0,25,50,50);
  ellipse(200,25,50,50);
  triangle(75,25,150,25,50,120);
  
  fill(0);
  triangle(190,5,190,25,220,25);
  popMatrix();
}
