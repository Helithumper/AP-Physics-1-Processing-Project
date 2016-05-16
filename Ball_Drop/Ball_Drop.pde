int numBalls = 100;
float ballDisplacement = .4;
float gravity = .001;
Ball[] balls = new Ball[numBalls];
int time;
int frame;
int frameHeight = 800;
int frameWidth = 640;

void setup(){
  size(640,800);
  fill(255,204);
  time = 0;
  frame = 0;
  for(int i = 0; i < numBalls; i ++){
    balls[i] = new Ball(i*ballDisplacement*20,5,5,i);
  }
}
void draw(){
 // background(0);
 clear();
 frame++;
 if(frame%5==0){time++;}
  for(Ball ball:balls){
    ball.tick();
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
  void tick(){
    y = y + vy*time+.5*gravity*pow(time,2);
    vy = vy+gravity*time;
    if(y>frameHeight-50){
      vy=-vy;}
  }
  void show(){
    ellipse(x,y,diameter,diameter);
  }
}