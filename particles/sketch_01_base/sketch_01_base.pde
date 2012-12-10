float ballX = 200;
float ballY = 200;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0);
  ellipse(ballX, ballY, 50, 50);
}
