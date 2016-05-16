PVector location = new PVector(100,100); //instead of floats for x & y
PVector velocity = new PVector(1,3.3); //instead of floats for xspeed & yspeed

void setup(){
  size(640,360);
  background(255);
}

void draw(){
  background(255);
  //Replaced
  /*x = x + xspeed;
  y = y + yspeed;*/
  location.add(velocity);
  
  if((location.x>width)||(location.x<0)){
    velocity.x = velocity.x * -1;
  }
  if((location.y>height)||(location.y<0)){
    velocity.y = velocity.y * -1;
  }
  
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}

class PVector {
  float x;
  float y;
  
  PVector(float inx,float iny){
    x=inx;
    y=iny;
  }
  
  void add(PVector v){
    y = y+v.y;
    x = x+v.x;
  }
  
}