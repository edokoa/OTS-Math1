float playerX = 400;
float playerY = 400;

float goalX = 600;
float goalY = 600;

float relativeAngle;

float rotation = 0;


void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
background(0); //we clear the screen in every frame
  
relativeAngle = (float)getAngle(playerX,playerY,goalX,goalY);  //we find out what the relative angle to the goal is

rotation=relativeAngle; //we rotate the player to face the goal

//We draw the player
noFill();
stroke(255,255,255);

ellipse(playerX,playerY,50,50);                                           //draw the circle
line(playerX,playerY,playerX+25*cos(radians(rotation)),playerY+25*sin(radians(rotation)));  //draw the line that shows where the player is facing

//We draw the goal
noStroke();
fill(100,100,255);

ellipse(goalX,goalY,20,20);

}

void mouseMoved() {
  goalX = mouseX;
  goalY = mouseY;
}

double getAngle(float x1,float y1,float x2,float y2){
      //y2 *= -1;
      double ang = Math.atan2(y2 - y1, x2 - x1) * (180/PI);
      if(ang<0){ang+=360;}
      return ang;
}
