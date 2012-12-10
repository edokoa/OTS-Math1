int rotation=0;

float shipX=0;
float shipY=0;

boolean engine=false;

float shipSpeedX;
float shipSpeedY;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0); // We clear the screen in every frame by coloring it black 
  translate(400,400);    //we put the coords center in (400,400) so it's in the center of the canvas
  engine=false;        //we set the engine off by default
  
  
  if(keyPressed){
    if (keyCode == LEFT) { rotation = rotation - 4; }      //If we press left or right, we update the rotation
    if (keyCode == RIGHT) { rotation = rotation + 4; }
    
    if (keyCode == UP){                                    //If we press up, we draw the fire and advance the ship
      advanceShip();
      engine=true;
      
    }
  }
  shipX = shipX + shipSpeedX;
  shipY = shipY + shipSpeedY;
  
  shipSpeedX = shipSpeedX*0.9;      //friction
  shipSpeedY = shipSpeedY*0.9;
  
  drawShip();
}

void advanceShip(){
  shipSpeedX = shipSpeedX + 1*cos(radians(rotation));   //thrust in the direction that the ship is facing
  shipSpeedY = shipSpeedY + 1*sin(radians(rotation));   //we basically decompose an unitary vector with the angle of the ship into two x / y vectors.
}

void drawShip(){
  stroke(255,255,255);  // We set the color to white
  
  // We draw a ship
  
    float vert1X = shipX + 40*cos(radians((360/3)*0)+radians(rotation));      
    float vert1Y = shipY + 40*sin(radians((360/3)*0)+radians(rotation));    //Tip of the ship
    
    float vert2X = shipX + 30*cos(radians((360/3)*1)+radians(rotation));      
    float vert2Y = shipY + 30*sin(radians((360/3)*1)+radians(rotation));    //Right wing
    
    float vert3X = shipX + 10*cos(radians((360/2)*1)+radians(rotation));      
    float vert3Y = shipY + 10*sin(radians((360/2)*1)+radians(rotation));    //bottom
    
    float vert4X = shipX + 30*cos(radians((360/3)*2)+radians(rotation));      
    float vert4Y = shipY + 30*sin(radians((360/3)*2)+radians(rotation));    //Left wing
    
    
    line(vert1X, vert1Y,vert2X,vert2Y);             
    line(vert2X, vert2Y,vert3X,vert3Y);
    line(vert3X, vert3Y,vert4X,vert4Y);
    line(vert4X, vert4Y,vert1X,vert1Y);
    
    if(engine==true){
      
        stroke(255,120,120);
        
        vert1X = shipX + 20*cos(radians((360/12)*5)+radians(rotation));      
        vert1Y = shipY + 20*sin(radians((360/12)*5)+radians(rotation));    
      
        vert2X = shipX + 40*cos(radians((360/12)*6)+radians(rotation));      
        vert2Y = shipY + 40*sin(radians((360/12)*6)+radians(rotation));    //Tip of the fire
      
        vert3X = shipX + 20*cos(radians((360/12)*7)+radians(rotation));      
        vert3Y = shipY + 20*sin(radians((360/12)*7)+radians(rotation));    
        
        line(vert1X, vert1Y,vert2X,vert2Y);  
        line(vert1X, vert1Y,vert2X,vert2Y);             
        line(vert2X, vert2Y,vert3X,vert3Y);
    }
}

