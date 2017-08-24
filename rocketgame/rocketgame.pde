/* 1. Change the code below to make the rocket ship take off. */
/* 2. Add a moon and stars to the sky. */
//------PImage img; 
static int x = 400;
int y = 650;
int k = keyCode;
int n = 200;//asteroidvariables-
float m = (random(800));
int o = 0;
float p = (random(800));
int a = 300;
float s = (random(800));
int b = 0;
float v = (random(800));
int g = 0;
float h = (random(800));
int not = 150;
float original = (random(800));
int d = 0;
float f = (random(800));//-asteroidvariables
float black = 150;//blackholes-
int hole = 0;
float blackh = 150;
int holeb = 0;
float blackho = 150;
int holebl = 0;//-blackholes
float q = random(650);//distraction
float j = random(800);//distraction
int lives = 6;//lifes
int w = 0;//wins
int speed = 1;
int size = 50;
int distraction = 20;
void setup() {
 //img = loadImage ("heart-c");
  background(0, 0, 10);
  size(800, 800);
}
void draw(){
  //x = mouseX;
  background(0, 0, 10);
  if(y == 650 && d == 0 && black == 150){
  fill(250);
textSize(60);
text("Click to start",200,250,800,300);
y--;
noLoop();
 }
//------image(img, 0, 0);
float q = random(650);
float j = random(800);
fill(random(200),random(50),random(100));
ellipse(j,q,(random(distraction)),(random(distraction)));
fill(100);
  ellipse(m,n+=4,size+10,size+10);//43-
  if(n>=800){
  n=0;  
   m=(random(800));
  }
  if(m-size/2+5 < mouseX && m+size/2+5 > mouseX && n-size/2+5 < y && n+size/2+5 > y){
  n=0;
  m=(random(800));
  lives--;
}
 ellipse(f,d+=4,size+10,size+10);
  if(d>=800){
  d=0;  
   f=(random(800));
  }
  if(f-size/2+5 < mouseX && f+size/2+5 > mouseX && d-size/2+5 < y && d+size/2+5 > y){
  d=0;
  f=(random(800));
  lives--;
}
ellipse(s,a+=2,size+50,size+50);
  if(a>=800){
  a=0;  
   s=(random(800));
   ellipse(s,a+=2,(random(100)),(random(100)));
  }
  if(s-80 < mouseX && s+80 > mouseX && a-80 < y && a+80 > y){
  a=0;
  s=(random(800));
  lives--;
}
ellipse(v,b+=2,size+50,size+50);
  if(b>=800){
  b=0;  
   v=(random(800));
   ellipse(v,b+=2,(random(100)),(random(100)));
  }
  if(v-80 < mouseX && v+80 > mouseX && b-80 < y && b+80 > y){
  b=0;
  v=(random(800));
  lives--;
}
ellipse(original,not+=2,size+50,size+50);
  if(not>=800){
  not=0;  
   original=(random(800));
   ellipse(original,not+=2,(random(100)),(random(100)));
  }
  if(original-size < mouseX && original+size > mouseX && not-size < y && not+size > y){
  b=0;
  v=(random(800));
  lives--;
}
ellipse(h,g+=6,size-10,size-10);
  if(g>=800){
  g=0;  
   h=(random(800));
  }
  if(h-size-10 < mouseX && h+size-10 > mouseX && g-size-10 < y && g+size-10 > y){
  g=0;
  h=(random(800));
  lives--;
}//-95 asteroids
fill(random(50),random(50),random(50));
ellipse(hole+=3,black,(random(80)),(random(80)));
  if(hole>800){
  hole=0;
  black=(random(300));
  }
  if(hole-40 < mouseX && hole+40 > mouseX && black-40 < y && black+40 > y){
 y = 650;
}
if(w>=16){
fill(random(50),random(50),random(50));
ellipse(holeb+=3,blackh,(random(80)),(random(80)));
  if(holeb>800){
  holeb=0;
  blackh=(random(300));
  }
  if(holeb-40 < mouseX && holeb+40 > mouseX && blackh-40 < y && blackh+40 > y){
 y = 650;
}}
if(w>=7){
fill(random(50),random(50),random(50));
ellipse(holebl-=3,blackho,(random(80)),(random(80)));
  if(holebl<0){
  holebl=800;
  blackho=(random(300));
  }
  if(holebl-40 < mouseX && holebl+40 > mouseX && blackho-40 < y && blackho+40 > y){
 y = 650;
}}
y-=speed;
  fill(random(100), 0, 0);
  ellipse(mouseX, y + 130, 90, 90);
  fill(248,random(50), 0);
  ellipse(mouseX, y + 115, 70, 70);
  fill(255,random(200), 0);
  ellipse(mouseX, y + 95, 35, 35);
  fill(100, 100, 100);//31-36 fire
  triangle(mouseX, y , mouseX + 50, y + 100, mouseX  - 50, y + 100);

if(y<0){
  w++;
  y=650;
  lives+=2;
  distraction +=20;
  speed +=.1;
  size +=4;
}
if(w==20){
fill(100,100,100);
ellipse(400,400,800,800); 
fill(250,250,0);
textSize(100);
text("YOU WIN",200,200, 800, 300);
fill(250);
textSize(60);
text("click to restart",200,430, 800, 300);
noLoop();
}
if(lives==0){
fill(0);
rect(0,0,800,800);
fill(250,0,0);
textSize(100);
text("Game Over",150,100, 800, 300);
fill(250);
textSize(60);
text("your score is " +w,200,350, 800, 300);
text("click to restart",200,430, 800, 300);
noLoop();
}}
void mouseClicked() {
lives = 6;
y = 651;
size = 50;
w = 0;
speed=1;
distraction=20;
n = 200;
o = 0;
a = 300;
b = 0;
g = 0;
not = 150;
d = 0;
  loop();
}