//variables:
PImage knockback;
PImage knockback2; 
PImage knockback3;
static int x;     // positions
int y = 50;
int Y = 250;
static int w, h;     // dimensions
static int ww, hh;   // radii
static int gw, gh;   // canvas - radii
//obstacles/powerups
float e = random(900);
int p = 870;
float q = random(900);
int i = 870;
float s = random(900);
int d = 870;
//timers
int startAtProgramBegin;
int page = 0;
 
// Object's constants:
final static byte  SPX  = 10, SPY = 10; // speed movement
final static color COLOUR = #0000FF;    // #blue
 
// General constants:
final static byte  FPS = 60;
final static color BG  = #FFFF00;       // #yellow
 
// General boolean variables:
static boolean north, south, west, east;
 
static final void initVars(int wdt, int hgt) {
  x = wdt>>1;    // center of screen
  
   w = wdt/10;    // 1/10th size of screen
  h = hgt/10;
 
  ww = w>>1;     // distances from center (radii)
  hh = h>>1;
 
  gw = wdt - ww; // diff. of (canvas dimensions - obj. radii)
  gh = hgt - hh;
}
 
void setup() {
  startAtProgramBegin = millis();
   knockback = loadImage("image-j.jpg");
   //knockback2 = loadImage("");
   //knockback3 = loadImage("");
  size(900, 870);
  smooth();            // turn on drawing smoothness
  frameRate(FPS);      // set frames / second
 
  rectMode(CENTER);    // coordinates are relative from center
  ellipseMode(CENTER);
 
  initVars(width, height);
}
 
void draw() {//-/-/--/----//--/----/-----write in----/-----/-----/-----/--/--/---////------/
  background(BG);//backgroundColor
 if(x == 450){fill(0);
 textSize(60);
 text("Click to start",650,500,800,800);
 textSize(42.5);
 noLoop();
 }
 fill(250);
  moveObject();
  confineToEdges();
  displayObject();
  fill(150);
  rect(x,y-140,20,200);
  ellipse(x,y,70,90);
  //----objectToAvoid
  image(knockback,e-50,p-50,100,100);
  p-=2;
  if(p<0){
    p = 870;
    e = random(900);
  }
  if(p+100>Y+5 && p-100<Y-5 && e+100>x+5 && e-100<x-5){
    Y-=50;
    p=870;
    e = random(900);
    }
    //--------EndGameScreen
  if(Y<=y){ 
 int startAtSolved = millis();
fill(250,0,0);
textSize(100);
text("Game Over ",600,200, 800, 300);
fill(250);
textSize(50);
text("click to restart",670,530, 800, 300);
textAlign(CENTER, 450);
text("you got eaten after " +  ((startAtSolved - startAtProgramBegin) / 1000.0) + " seconds",450,450, 1000, 300);
noLoop();  
  }
}//------------------------------------------------here-------------------
 
void keyPressed() {
  final int k = keyCode;
   setDirection(k, true);
}
 
void keyReleased() {
  setDirection(keyCode, false);
}
 
static final void setDirection(int k, boolean decision) {
       if (k == LEFT  | k == 'A')   west  = decision;
  else if (k == RIGHT | k == 'D')   east  = decision;
}
 
static final void moveObject() {
  x += (east?  SPX : 0) - (west?  SPX : 0);
}
 
static final void confineToEdges() {
  x = constrain(x, ww, gw);
}
 
void displayObject() {
   ellipse(x, Y, w, h);
}
void mouseClicked() {
  //if(mouseX<=  && mouseX>= && mouseY<= && mouseY>=)
x-=1;
e = random(900);
p = 870;
q = random(900);
i = 870;
Y = 250;
  loop();
}