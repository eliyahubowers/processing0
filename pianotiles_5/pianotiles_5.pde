//rects{{
  //1
int rect1_ = -150;
float r1= random(3);
int rect1 = round(r1);
int in1 = 1;
  //2
int rect2_ = -300;
float r2 = random(3);
int rect2 = round(r2);
int in2 = 1;
  //3
int rect3_ = -450;
float r3 = random(3);
int rect3 = round(r3);
int in3 = 1;
  //4
int rect4_ = -600;
float r4 = random(3);
int rect4 = round(r4);
int in4 = 1;
  //5
int rect5_ = -750;
float r5 = random(3);
int rect5 = round(r5);
int in5 = 1; 

void setup(){
 size(400,600);
}
void draw(){
  background(0,0,200);
  //rects
  //1
fill(0,0,0,in1*250);
rect(rect1*100,rect1_,100,150);  
rect1_+=2;
if(rect1_ > 600){
  rect1_ = -150;
 r1= random(3);
 rect1 = round(r1);
}
  //2
fill(0,0,0,in2*250);  
rect(rect2*100,rect2_,100,150);  
rect2_+=2;
if(rect2_ > 600){
  rect2_ = -150;
 r2= random(3);
 rect2 = round(r2);
}
  //3
fill(0,0,0,in3*250);  
rect(rect3*100,rect3_,100,150);  
rect3_+=2;
if(rect3_ > 600){
  rect3_ = -150;
 r3= random(3);
 rect3 = round(r3);
}
  //4  
fill(0,0,0,in4*250);  
rect(rect4*100,rect4_,100,150);  
rect4_+=2;
if(rect4_ > 600){
  rect4_ = -150;
 r4= random(3);
 rect4 = round(r4);
}
  //5
 fill(0,0,0,in5*250); 
rect(rect5*100,rect5_,100,150);  
rect5_+=2;
if(rect5_ > 600){
  rect5_ = -150;
 r5= random(3);
 rect5 = round(r5);
 
}
if(mousePressed == true) {
if(rect1+100 > mouseX && rect1 < mouseX && rect1_+150 > mouseY && rect1_ < mouseY){
in1-=1;  
}
  
  
}

}