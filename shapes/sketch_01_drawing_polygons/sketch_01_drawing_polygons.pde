int sides= 5;
int radius = 50;

void setup() {
  size(600, 600); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0); // We clear the screen in every frame by coloring it black 
  
  translate(300,300);    //we put the coords center in (300,300) so it's in the center of the canvas
  //rotate(radians(-90)); //this line rotates the viewport 90º counterclockwise to make the 0º face upwards.
  
  stroke(100,100,100);   // We set the color to grey and we draw both axis
  line(-250,0,250,0);  
  line(0,-250,0,250);
  
  
  stroke(255,255,255);  // We set the color to white
  
  
  // We draw the polygon
  for(int i=0;i<sides; i++){
    float vert1X = radius*cos(radians((360/sides)*i));      //Here we find the x and y coordinates of the current vertex
    float vert1Y = radius*sin(radians((360/sides)*i));
    float vert2X = radius*cos(radians((360/sides)*(i+1)));  //And the next vertex
    float vert2Y = radius*sin(radians((360/sides)*(i+1)));  //using basic trigonometric operations
    
    line(vert1X, vert1Y,vert2X,vert2Y);                     //So we can draw a line between the current vertex and the next one
  }
}
