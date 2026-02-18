int monsterx;
int monsterAngle;

void setup(){
  size(600,600,P2D);
  monsterx=1;
}
void draw(){
  background(200);
  monster(monsterx,300,monsterAngle);
  monsterx=monsterx+12;
  monsterAngle=monsterAngle+10;
  if(monsterx>700){
    monsterx=-100;
  }
  
}
//           paremeters
void monster(int x, int y, int angle){
  pushMatrix(); //begin transformations
  
  translate(x,y);
  
  rotate(radians(angle));
  
  fill(120,180,50);
  ellipse(0,0,200,200);
  
  fill(255);
  ellipse(0,0,100,100);
  
  fill(50,150,50);
  ellipse(0,00,60,60);
  
  fill(0);
  ellipse(0,0,30,30);
  
  fill(255);
  ellipse(10,-10,10,10);
  
  fill(0);
  arc(0,60,100,50,0,PI);
  
  fill(255);
  triangle(-75,-50,-50,-70,-70,-120);
  triangle(75,-50,50,-70,65,-120);
  popMatrix(); //end transformations
}
