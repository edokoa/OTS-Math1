int sides= 5;
int radius = 200;

void setup() {
  size(800, 800); //We set up the size of the display
  background(0);  //We set up the background color
  frameRate(24);  //We set up the frame rate of the application (24 frames per second = normal movie frame rate)
}

void draw(){
  background(0); // We clear the screen in every frame by coloring it black 
  
  translate(400,400);    //we put the coords center in (400,400) so it's in the center of the canvas
  //rotate(radians(-90)); //this line rotates the viewport 90º counterclockwise to make the 0º face upwards.
  
  stroke(100,100,100);   // We set the color to grey and we draw both axis
  line(-350,0,350,0);  
  line(0,-350,0,350);
  
  stroke(50,50,50);   // We set the color to grey and we draw the reference circle
  noFill();
  ellipse(0,0,radius*2,radius*2);        //This is the circle in which the polygon is inscribed
  
  for(int i=0;i<sides; i++){            //We draw the lines from the center (spokes)
    //line(radius*cos(radians((360/sides)*i)), radius*sin(radians((360/sides)*i)),0,0);
  }
  
  stroke(255,255,255);  // We set the color to white
    
  // We draw the polygon
  for(int i=0;i<sides; i++){
    
    float vert1X = radius*cos(radians((360/sides)*i));
    float vert1Y = radius*sin(radians((360/sides)*i));
    float vert2X = radius*cos(radians((360/sides)*(i+1)));
    float vert2Y = radius*sin(radians((360/sides)*(i+1)));
    
    line(vert1X, vert1Y,vert2X,vert2Y);
  }
  

  for(int i=0;i<sides; i++){            //We draw the lines from the center (spokes), the vertexes and the coordinates
    
    float vertX=radius*cos(radians((360/sides)*i));
    float vertY=radius*sin(radians((360/sides)*i));
    
    line(0,0,vertX,vertY); // Spokes
    
     fill(255,255,255);                    //We set the properties of the points
    stroke(0,0,0);
  
    ellipse(vertX, vertY,10,10); //vertex points
    
    //We can also show the coordinates for every vertex
    text("("+vertX+","+vertY+")",(radius+30)*cos(radians((360/sides)*i)), (radius+30)*sin(radians((360/sides)*i)));
  }
  
  
  
}
