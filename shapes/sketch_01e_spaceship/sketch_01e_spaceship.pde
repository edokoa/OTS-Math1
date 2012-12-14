int rotation=0;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0); // We clear the screen in every frame by coloring it black 
  
  //rotation = rotation +2; //We increment rotation by 2º in every frame
  
  translate(400,400);    //we put the coords center in (400,400) so it's in the center of the canvas
  //rotate(radians(-90)); //this line rotates the viewport 90º counterclockwise to make the 0º face upwards. (it rotates everything, even the text!!!)
  
  stroke(100,100,100);   // We set the color to grey and we draw both axis
  
  line(-250,0,250,0);  //Those two lines draw both axis
  line(0,-250,0,250);
  
  noFill();                                      //We make the fill of the objects invisible
  ellipse(0,0,40,40);     //so we can draw the reference circles (inner & outer)
  ellipse(0,0,120,120);
  ellipse(0,0,160,160);
   
  stroke(255,255,255);  // We set the color to white
  
  // We draw a ship
  
    float vert1X = 80*cos(radians((360/3)*0)+radians(rotation));      
    float vert1Y = 80*sin(radians((360/3)*0)+radians(rotation));    //Tip of the ship
    
    float vert2X = 60*cos(radians((360/3)*1)+radians(rotation));      
    float vert2Y = 60*sin(radians((360/3)*1)+radians(rotation));    //Right wing
    
    float vert3X = 20*cos(radians((360/2)*1)+radians(rotation));      
    float vert3Y = 20*sin(radians((360/2)*1)+radians(rotation));    //bottom
    
    float vert4X = 60*cos(radians((360/3)*2)+radians(rotation));      
    float vert4Y = 60*sin(radians((360/3)*2)+radians(rotation));    //Left wing
    
    
    line(vert1X, vert1Y,vert2X,vert2Y);             
    line(vert2X, vert2Y,vert3X,vert3Y);
    line(vert3X, vert3Y,vert4X,vert4Y);
    line(vert4X, vert4Y,vert1X,vert1Y);
    
    
}
