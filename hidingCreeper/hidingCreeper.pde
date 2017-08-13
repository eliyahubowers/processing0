PImage creeper;
PImage minecraft;
int hw =800;
float x = (random(hw)) ;
float y = (random(10)) ;
int a = (int) x ;
int b = (int) y ;
int c = 0 ;
void setup(){
   minecraft = loadImage("minecraft.jpg");
   creeper = loadImage("creeper.png");
  minecraft.resize(hw, hw);
  creeper.resize(10, 10);
  background(minecraft);
  size(800,800);
}
void draw(){
  background(minecraft);
  if(c>0){
    delay(1000);
    fill(250);
    rect(0,0,800,800);
     x = (random(hw)) ;
     y = (random(hw)) ;
     a = (int) x ;
     b = (int) y ;
    c=0;
  }
 image(creeper, x, y); 
 if(mousePressed){
   fill(250,0,0);
   if(isNear(mouseX,a)){
   if(isNear(mouseY,b)){
   fill(250);
   textSize(60);
   text("you found the creeper",100,100);
     fill(0,200,0);
     c++;
   }
   ellipse(mouseX,mouseY,20,20);
 }}
}
boolean isNear(int a, int b) {
  if (abs(a - b) < 20)
        return true;
  else
        return false;
}