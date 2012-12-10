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
  background(0);                  //we clear the background in every frame
  
  ballX = ballX + speedX;
  ballY = ballY + speedY;
  
  ellipse(ballX, ballY, 50, 50);  //we draw a circle at the coordinates of the particle radius 25
  
  
}
