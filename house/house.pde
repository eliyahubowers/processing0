PImage person;
void setup(){
  size(500,350);
  person=loadImage("transparent.png");
  }
void draw(){
  background(100,100,100);
  fill(0,0,100);
 rect(150,150,200,150);
 fill(100,0,0);
 rect(300,50,40,100);//chimney
 fill(0,0,100);
 triangle(130,150,370,150,250,30);
 fill(250,250,250);
 rect(230,220,40,80);//door
 rect(170,170,40,40);//lwindow
 rect(290,170,40,40);//rwindow
 fill(0,0,100);
ellipse(240,260,10,10);
image(person,mouseX,mouseY);
}