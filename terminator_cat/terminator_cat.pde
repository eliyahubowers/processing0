PImage catPic;
int ellipse = 100;
int x = 620;
int y = 520;
float acceleration;
int coolor = 10;
void setup(){ 
size(1400,900);
catPic = loadImage("cat.jpg");
catPic.resize(1400,900);  // to match your size
background(catPic);
}
void draw(){
  float randomS = random(-200,5);
  if(coolor>250){
  x+=2*acceleration;
  y+=1*acceleration;
  acceleration+=.1;  
  fill(coolor,0,0);
ellipse(x, y-10, coolor-140+randomS, coolor-150+randomS);
ellipse(x+280, y-20, coolor-140+randomS, coolor-150+randomS);
  }
  noStroke();
fill(coolor,0,0);
ellipse(x, y-10, coolor-140, coolor-150);
ellipse(x+280, y-20, coolor-140, coolor-150);
  if(x>width){
   x=620; 
   y=520;
   acceleration=1;
   background(catPic);  
   coolor=11; 
  }
  if(coolor<251 && coolor>10){
  coolor+=5;
  }
}
void keyPressed() {
x+=2*acceleration;
y+=1*acceleration;  
acceleration+=1;
coolor++;
}