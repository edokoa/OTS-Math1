int sides= 5;
int outerRadius = 200;
int innerRadius = 100;
int rotation=0;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0); // We clear the screen in every frame by coloring it black 
  translate(400,400);    //we put the coords center in (400,400) so it's in the center of the canvas
  
  
  
  if(keyPressed){
    if (keyCode == LEFT) { rotation = rotation - 4; }      //If we press left or right, we update the rotation
    if (keyCode == RIGHT) { rotation = rotation + 4; }
    
    if (keyCode == UP){                                    //If we press up, we draw the fire
      stroke(255,120,120);
      
      float vert1X = 20*cos(radians((360/12)*5)+radians(rotation));      
      float vert1Y = 20*sin(radians((360/12)*5)+radians(rotation));    
    
      float vert2X = 40*cos(radians((360/12)*6)+radians(rotation));      
      float vert2Y = 40*sin(radians((360/12)*6)+radians(rotation));    //Tip of the fire
    
      float vert3X = 20*cos(radians((360/12)*7)+radians(rotation));      
      float vert3Y = 20*sin(radians((360/12)*7)+radians(rotation));    
      
      line(vert1X, vert1Y,vert2X,vert2Y);  
      line(vert1X, vert1Y,vert2X,vert2Y);             
      line(vert2X, vert2Y,vert3X,vert3Y);
    }
  }
  
  drawShip();
}

void drawShip(){
  stroke(255,255,255);  // We set the color to white
  
  // We draw a ship
  
    float vert1X = 40*cos(radians((360/3)*0)+radians(rotation));      
    float vert1Y = 40*sin(radians((360/3)*0)+radians(rotation));    //Tip of the ship
    
    float vert2X = 30*cos(radians((360/3)*1)+radians(rotation));      
    float vert2Y = 30*sin(radians((360/3)*1)+radians(rotation));    //Right wing
    
    float vert3X = 10*cos(radians((360/2)*1)+radians(rotation));      
    float vert3Y = 10*sin(radians((360/2)*1)+radians(rotation));    //bottom
    
    float vert4X = 30*cos(radians((360/3)*2)+radians(rotation));      
    float vert4Y = 30*sin(radians((360/3)*2)+radians(rotation));    //Left wing
    
    
    line(vert1X, vert1Y,vert2X,vert2Y);             
    line(vert2X, vert2Y,vert3X,vert3Y);
    line(vert3X, vert3Y,vert4X,vert4Y);
    line(vert4X, vert4Y,vert1X,vert1Y);
}

