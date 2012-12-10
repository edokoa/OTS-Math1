float ballX = 100;
float ballY = 200;

float speedX = 5;
float speedY = 5;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0);                 //we clear the background in every frame
  
  ballX = ballX + speedX;        //we add the speed to the position of the ball to the position
  ballY = ballY + speedY;
  
  if(ballX>800){                //if the ball goes over any of the borders, we reposition the ball in the border and invert the speed of that axis.
    ballX=800;
    speedX = -speedX;
  }
  
  if(ballX<0){
    ballX=0;
    speedX = -speedX;
  }
  
  if(ballY>800){
    ballY=800;
    speedY = -speedY;
  }
  
  if(ballY<0){
    ballY=0;
    speedY = -speedY;
  }
  
  
  
  ellipse(ballX, ballY, 50, 50);  //we draw a circle at the coordinates of the particle radius 25
}
