int numBalls = 10;
float ballDisplacement = 5;
float gravity = 5;
Ball[] balls = new Ball[numBalls];

void setup(){
  size(640,360);
  fill(255,204);
  for(int i = 0; i < numBalls; i ++){
    balls[i] = new Ball(i*ballDisplacement*20,100,100,i);
  }
}
void draw(){
 // background(0);
  for(Ball ball:balls){
    ball.show();
  }
}

class Ball {
  float x,y;
  float diameter;
  float vx = 0;
  float vy = 0;
  int id;
  
  Ball(float xin, float yin, float din, int idin){
    x = xin;
    y = yin;
    diameter = din;
    id = idin;
  }
  
  void show(){
    ellipse(x,y,diameter,diameter);
  }
}