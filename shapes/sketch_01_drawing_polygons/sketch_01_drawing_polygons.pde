int sides= 3;
int radius = 100;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0); // We clear the screen in every frame by coloring it black 
  
  translate(400,400);    //we put the coords center in (400,400) so it's in the center of the canvas
  rotate(radians(-90)); //this line rotates the viewport 90º counterclockwise to make the 0º face upwards.
  
  stroke(150);   // We set the color to grey and we draw both axis
  line(-250,0,250,0);  
  line(0,-250,0,250);
  
  stroke(255,255,255);  // We set the color to white
  
  
  // We draw the polygon
  for(int i=0; i<sides; i++){
    
    float vert1X = radius*cos(radians((360/sides)*i));      //Here we find the x coordinate of the current vertex
    float vert1Y = radius*sin(radians((360/sides)*i));      //Here we find the y coordinate of the current vertex
    
    float vert2X = radius*cos(radians((360/sides)*(i+1)));  //Here we find the x coordinate of the next vertex
    float vert2Y = radius*sin(radians((360/sides)*(i+1)));  //Here we find the x coordinate of the next vertex
    
    line(vert1X, vert1Y,vert2X,vert2Y);                     //So we can draw a line between the current vertex and the next one
  }
}
