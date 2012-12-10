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
  
  if(ballX>775){                //if the ball goes over any of the borders, we reposition the ball in the border and invert the speed of that axis.
    ballX=775;                  //in this case we count a 25px offset to compensate the radius of the ball
    speedX = -speedX;
  }
  
  if(ballX<25){
    ballX=25;
    speedX = -speedX;
  }
  
  if(ballY>775){
    ballY=775;
    speedY = -speedY;
  }
  
  if(ballY<25){
    ballY=25;
    speedY = -speedY;
  }
  
  
  
  ellipse(ballX, ballY, 50, 50);  //we draw a circle at the coordinates of the particle radius 25
}

