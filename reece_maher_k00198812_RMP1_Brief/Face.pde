class Face{
 
float size = 200;  
  
Face(){
  
  
  
}
  
void paint(int xPos,int yPos){
  pushMatrix();
  
  translate(xPos, yPos);
  
  rect(0,0,size,size);
  
  popMatrix();
  
  
}


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}