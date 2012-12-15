float characterX = 200;
float characterY = 400;

float diameter = 100;

float speedX = 0;
float speedY = 0;

float mass = 8;

float gravity = 1;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color to black
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
//preparation

background(0);
  
//process

speedY = speedY + (mass*gravity);

characterX = characterX + speedX;
characterY = characterY + speedY;

if(characterY + (diameter/2) > 800){
  characterY = 800 - (diameter/2);
  speedY = -speedY * 0.9;
}

if(characterY - (diameter/2) < 0){
  characterY = 0 + (diameter/2);
  speedY = -speedY;
}

if(characterX + (diameter/2) > 800){
  characterX = 800 - (diameter/2);
  speedX = -speedX;
}

if(characterX - (diameter/2) < 0){
  characterX = 0 + (diameter/2);
  speedX = -speedX;
}

//drawing 

ellipse(characterX,characterY,diameter,diameter);
  
}
