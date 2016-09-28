class Face{
 
float size = 200;  
color faceColour = color(random(255), random(255), random(255));

color eyeColour = color(random(255), random(255), random(255));
  
Face(){
  
  
  
}
  
void paint(int xPos,int yPos){
  pushMatrix();
  
  translate(xPos, yPos);
  
  fill(faceColour);
  //face origin is o,o
  ellipse(0,0,size,size);
  
  fill(255);
  // eyes are moved on the x and y axis into their positions and the size is divided by 4 to shrink them
  ellipse(-35,-50,size/4, size/4);
  
  
  ellipse(35,-50,size/4, size/4);
  //pupils are black so they stand out and the size is made smaller to act as pupils
  fill(0);
  ellipse(35,-50,size/10, size/10);
  ellipse(-35,-50,size/10, size/10);
  
  //simple line for current mouth
  line(-45,25,45,25);
  
  //arc(0,26,95,50,0, HALF_PI);
  arc(0,-15,95,50,0, HALF_PI);
  
  popMatrix();
  
  
}


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}