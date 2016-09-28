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
  ellipse(0,0,size,size);
  
  fill(eyeColour);
  ellipse(-35,-50,size/4, size/4);
  
  ellipse(35,-50,size/4, size/4);
  
  popMatrix();
  
  
}


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}