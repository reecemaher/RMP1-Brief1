float [][] allCircles = new float[20][];



void setup()
{
  size(800,800);
  for(int r=0; r <allCircles.length ; r++){
    
 float[] circle = new float[3];
 
 circle[0] = random(width);
 circle[1] = random(height);
 circle[2] = random(10,50);
 
 allCircles[r] = circle;
  
  }
  
}

void draw(){
 for(int i =0; i <allCircles.length; i++){
  ellipse(allCircles[i][0], allCircles[i][1], allCircles[i][2], allCircles[i][2]); 
   
   
 }
  
  
}