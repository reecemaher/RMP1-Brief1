
//2D array to hold 20 rows 
float [][] allCircles = new float[20][];
color [] randColor = new color[20];
color bcColor = color(random(255),random(255), random(255));
int faceX = 20;
int faceY = 20;

//int to move all the circles when arrow keys are pressed
int movement = 5;

//create new instance of class face
Face myFace;
void setup()
{
  size(800,800);
  background(bcColor);
  myFace = new Face();
  //for loop to create 20 arrays named circle with 3 random values(x,y and radius) and then place the circle into the 2D array
  for(int r=0; r <allCircles.length ; r++){
    
 float[] circle = new float[3];
 
 circle[0] = random(width);
 circle[1] = random(height);
 circle[2] = random(10,50);
 
 allCircles[r] = circle;
 //random color 
  randColor[r] = color(random(255),random(255), random(255));
  }
  
}

void draw(){
  background(bcColor);
  myFace.paint(faceX,faceY);
  //the x any y values for face are equal to the x and y values of the mouse cursor making the instance myface follow th emouse
  faceX = mouseX;
  faceY = mouseY;
  
  //for loop to obtain all the figures to draw out to 20 circles
 for(int i =0; i <allCircles.length; i++){
   
   fill(randColor[i]);
  ellipse(allCircles[i][0], allCircles[i][1], allCircles[i][2], allCircles[i][2]); 
  
  
  if(dist(allCircles[i][0], allCircles[i][1], mouseX,mouseY) < allCircles[i][2]/2){
    stroke(255); 
    
    if(mousePressed == true){
      allCircles[i][0] = random(width);
      allCircles[i][1] = random(height);
      allCircles[i][2] = random(10,50);
    }
    
  }
  else{
    stroke(0);
  }
  
   //0 represents the x axis of the array circle and is used to move the circles left and right
   if(keyCode == LEFT && keyPressed == true){
     
     allCircles[i][0] -= movement;
      if(allCircles[i][0] < 0)
     {
      allCircles[i][0] = width+allCircles[i][2]; 
     }
    
     
     
   }
   
   if(keyCode == RIGHT && keyPressed == true){
     
     allCircles[i][0] += movement;
      if(allCircles[i][0] > width)
     {
      allCircles[i][0] = 0-allCircles[i][2]; 
     }
     
   }
   //0 represents the y axis of the array circle and is used to move the circles up and down
   if(keyCode == UP && keyPressed == true){
     
     allCircles[i][1] -= movement;
     
     
   }
   
   if(keyCode == DOWN && keyPressed == true){
     
     allCircles[i][1] += movement;
     
     
   }
   
 }
  
  
}