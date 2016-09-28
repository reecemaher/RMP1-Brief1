class Face{
 
float size = 200;  
color faceColour = color(random(255), random(255), random(255));
  
Face(){
  
  
  
}
  
void paint(int xPos,int yPos){
  pushMatrix();
  
  translate(xPos, yPos);
  
  fill(faceColour);
  ellipse(0,0,size,size);
  
  popMatrix();
  
  
}


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}