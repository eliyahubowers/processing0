PImage catPic;
int ellipse = 100;
int x = 667;
int y = 566;
float acceleration;
int coolor = 10;
void setup(){
size(1500,1000); 
catPic = loadImage("cat.jpg");
catPic.resize(1500, 1000);  // to match your size
background(catPic);
}
void draw(){
  noStroke();
fill(coolor,0,0);
ellipse(x, y-10, coolor-130, coolor-160);
ellipse(x+300, y-20, coolor-130, coolor-160);
  if(x>width){
   x=667; 
   y=566;
   acceleration=1;
   background(catPic);  
   coolor=10;
  }
  if(coolor>250){
  x+=2*acceleration;
  y+=1*acceleration;
  acceleration+=.1;
  }
  if(coolor<251){
  coolor+=5;
  }
}
void keyPressed() {
   x+=2*acceleration;
y+=1*acceleration;  
acceleration+=1;
}