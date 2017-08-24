//images{
PImage creeper;
PImage minecraft;
int startAtProgramBegin;//timer
int hw =800;//size variable
//creeper placing{
float x = (random(10)) ;
float y = (random(10)) ;
//int creeper placing{
int a = (int) x ;
int b = (int) y ;
int c = 0 ;//triggers delay
int cre = 0;// ammount of ceepers found
int cree = 30;//size of creepers
void setup(){
   minecraft = loadImage("minecraft.jpg");
   creeper = loadImage("creeper.png");
  minecraft.resize(hw, hw);
  creeper.resize(cree, cree);
  background(minecraft);
  size(800,800);
  startAtProgramBegin = millis();
}
void draw(){
  background(minecraft);
  if(cre>0){ 
    fill(250);
    int startAtSolved = millis();
    textSize(20);
    text(cre +" creepers in "+ ((startAtSolved - startAtProgramBegin) / 1000.0) + " seconds",0,750 ); 
  }
  if(c>0){
    delay(1000);
    fill(250);
    rect(0,0,800,800);
     x = (random(hw)) ;
     y = (random(hw-100)) ;
     a = (int) x ;
     b = (int) y ;
    c=0;
     creeper.resize(cree, cree);
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
     cre++;
    if(cre<=2){
    cree-=10;  
    }
 }}
 noStroke();
  ellipse(mouseX,mouseY,20,20);
 }
}
boolean isNear(int a, int b) {
  if (abs(a - b) < 20)
        return true;
  else
        return false;
}