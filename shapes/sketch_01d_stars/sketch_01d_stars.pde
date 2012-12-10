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
  
  //rotation = rotation +2; //We increment rotation by 2º in every frame
  
  translate(400,400);    //we put the coords center in (400,400) so it's in the center of the canvas
  //rotate(radians(-90)); //this line rotates the viewport 90º counterclockwise to make the 0º face upwards. (it rotates everything, even the text!!!)
  
  stroke(100,100,100);   // We set the color to grey and we draw both axis
  
  line(-250,0,250,0);  
  line(0,-250,0,250);
  
  noFill();                                      //We make the fill of the objects invisible
  ellipse(0,0,innerRadius*2, innerRadius*2);     //so we can draw the reference circles (inner & outer)
  ellipse(0,0,outerRadius*2, outerRadius*2);
   
  stroke(255,255,255);  // We set the color to white
  
  // We draw the polygon
  for(int i=0;i<sides; i++){
    float vert1X = outerRadius*cos(radians((360/sides)*i)+radians(rotation));      //Here we find the x and y coordinates of the current vertex
    float vert1Y = outerRadius*sin(radians((360/sides)*i)+radians(rotation));
    float vert2X = innerRadius*cos(radians((360/(sides*2))*(i*2+1))+radians(rotation));  //The next inner vertex
    float vert2Y = innerRadius*sin(radians((360/(sides*2))*(i*2+1))+radians(rotation));  //Observe how we divide the reference circle in the double of segments
    float vert3X = outerRadius*cos(radians((360/sides)*(i+1))+radians(rotation));  //The next outer vertex
    float vert3Y = outerRadius*sin(radians((360/sides)*(i+1))+radians(rotation));  //using basic trigonometric operations
    
    line(vert1X, vert1Y,vert2X,vert2Y);                     //So we can draw a line between the current vertex and the next inner point
    line(vert2X, vert2Y,vert3X,vert3Y);                     //And the iner point and the next vertex
  }
}
