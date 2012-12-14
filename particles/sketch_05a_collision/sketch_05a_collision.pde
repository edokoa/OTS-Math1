float ballX = 300;
float ballY = 400;

float speedX = 10;
float speedY = 0;

float ball2X = 500;
float ball2Y = 300;

float speed2X = 10;
float speed2Y = 0;

float distance=0;



void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0);                 //we clear the background in every frame
  
  speedY = speedY+1;              //we add gravity to the speedY in every frame
  speed2Y = speed2Y+1;            //also with the 2nd ball
  
  ballX = ballX + speedX;        //we add the speed to the position of the ball to the position
  ballY = ballY + speedY;
  ball2X = ball2X + speed2X;        //we add the speed to the position of the ball 2to the position
  ball2Y = ball2Y + speed2Y;
  
  checkBorders();
  
  fill(100,255,100);
  ellipse(ballX, ballY, 50, 50);  //we draw a circle at the coordinates of the particle radius 25
  fill(255,100,100);
  ellipse(ball2X, ball2Y, 50, 50);  //we draw a circle at the coordinates of the particle radius 25
  
  stroke(100,100,255);
  line(ballX,ballY,ball2X,ball2Y);
  
  distance=sqrt(pow(ballX-ball2X,2)+pow(ballY-ball2Y,2));    //Pythagorean Theorem
  
  
  fill(255,255,255);
  text(distance,50,50);
  
  if(distance<50){
    fill(255,100,100);
    text("COLLISION!",ball2X,ballY-50);  
  }
}




/*************************
I put this outside to keep it cleaner
**************************/



void checkBorders(){
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
    speedY = -speedY*0.9;      //In this case, the ground absorbs part of the force, so the speed of the rebound is a little bit smaller than the original speed
  }
  
  if(ballY<25){
    ballY=25;
    speedY = -speedY;
  }
  

      // Let's do it again for the second ball...


   if(ball2X>775){          
    ball2X=775;                  
    speed2X = -speed2X;
  }
  
  if(ball2X<25){
    ball2X=25;
    speed2X = -speed2X;
  }
  
  if(ball2Y>775){
    ball2Y=775;
    speed2Y = -speed2Y*0.9;      //In this case, the ground absorbs part of the force, so the speed of the rebound is a little bit smaller than the original speed
  }
  
  if(ball2Y<25){
    ball2Y=25;
    speed2Y = -speed2Y;
  }
  

}
