
//2D array to hold 20 rows 
float [][] allCircles = new float[20][];
color [] randColor = new color[20];
color bcColor = color(random(255),random(255), random(255));

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
  myFace.paint(20,20);
  
  //for loop to obtain all the figures to draw out to 20 circles
 for(int i =0; i <allCircles.length; i++){
   
   fill(randColor[i]);
  ellipse(allCircles[i][0], allCircles[i][1], allCircles[i][2], allCircles[i][2]); 
  
   
   if(keyCode == LEFT && keyPressed == true){
     
     allCircles[i][0] -= movement;
     
     
   }
   
   if(keyCode == RIGHT && keyPressed == true){
     
     allCircles[i][0] += movement;
     
     
   }
   
   if(keyCode == UP && keyPressed == true){
     
     allCircles[i][1] -= movement;
     
     
   }
   
   if(keyCode == DOWN && keyPressed == true){
     
     allCircles[i][1] += movement;
     
     
   }
   
 }
  
  
}