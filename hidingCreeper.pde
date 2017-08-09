PImage creeper;
PImage minecraft;
float x = random(1000) ;
float y = random(1000) ;
int a = (int) Math.round(x);
int b = (int) Math.round(y);
void setup(){
   minecraft = loadImage("minecraft.jpg");
   creeper = loadImage("creeper.png");
  creeper.resize(10,10);
  size(1000,1000);
  minecraft.resize(1000, 1000);
}
void draw(){
  background(minecraft);
 image(creeper, a, b); 
 if(mousePressed){
   fill(250,0,0);
   if(isNear(mouseX,a)){
   if(isNear(mouseY,b)){
     textSize(70);
     text("you found the creeper",100,450);
     fill(0,250,0);
     x = random(1000);
     y = random(1000);
     a = (int) Math.round(x);
     b = (int) Math.round(y);
   }}
   ellipse(mouseX,mouseY,20,20);
 }
}
boolean isNear(int a, int b) {
      if (abs(a - b) < 20)
          return true;
    else
       return false;
}

