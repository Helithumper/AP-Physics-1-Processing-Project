Object ball;

void setup(){
  size(640,360);
  ball = new Object();
}

void draw(){
  background(255);
  
  ball.update();
  ball.checkEdges();
  ball.display();
}

class Object {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Object(){
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    
  }
  
  void update(){
    location.add(velocity);
    velocity.add(acceleration);
    velocity.limit(10);
  }
  
  void display(){
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges(){
    if(location.x > width){
      location.x=0;
    }
    else if(location.x<0){
      location.x = width;
    }
    
    if(location.y > height){
      location.y = 0;
    }
    else if(location.y < 0){
      location.y = height;
    }
  }
}
  