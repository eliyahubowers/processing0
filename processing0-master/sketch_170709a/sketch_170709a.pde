/* 1. Change the code below to make the rocket ship take off. */
/* 2. Add a moon and stars to the sky. */

int x = 400;
int y = 600;
int n = 0;
int m = 400;

void setup() {
  background(0, 0, 40);
  size(800, 800);
 
}
void draw() {
  background(0, 0, 40);
  fill(random(255), 0, 0);
  ellipse(mouseX, mouseY + 130, 90, 90);
  fill(248, 128, 0);
  ellipse(mouseX, mouseY + 115, 70, 70);
  fill(255, 153, 0);
  ellipse(mouseX, mouseY + 95, 35, 35);
  fill(100, 100, 100);
  triangle(mouseX, mouseY + 10, mouseX + 50, mouseY + 100, mouseX  - 50, mouseY + 100);
  ellipse(m,n+=2,10,10);
  if(n>=800){
  n=0;
  }
}


