Object ball;

void setup(){
  size(1920,1080);
  ball = new Object();
}

void draw(){
  background(255);
  
  ball.update();
  ball.checkEdges();
  ball.display();
  saveFrame("frames/####.tig");
}

class Object {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed = 10;
  
  Object(){
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    
  }
  
  void update(){
    velocity.add(acceleration);
    velocity.limit(topspeed);
    
    location.add(velocity);
    acceleration = PVector.random2D();
  }
  
  void display(){
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,40,40);
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
  