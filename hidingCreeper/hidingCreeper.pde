PImage creeper;
PImage minecraft;
float x = (random(1000)) ;
float y = (random(900)) ;
void setup(){
   minecraft = loadImage("minecraft.jpg");
   creeper = loadImage("creeper.png");
  minecraft.resize(1000, 900);
  creeper.resize(10,10);
  background(minecraft);
  size(1000,900);
}
void draw(){
  background(minecraft);
 image(creeper, x, y); 
 if(mousePressed){
   fill(250,0,0);
   ellipse(mouseX,mouseY,20,20);
 }
}