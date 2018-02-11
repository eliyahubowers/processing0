int bally = 50;
float ballx = 50;
int score = 0;
void setup(){
  size(400,400);
  ellipseMode(CENTER);
}

void draw(){
  background(0);
  fill(0,0,250);
  ellipse(ballx,bally,60,60);
  bally+=6;
  if(bally>400){
    bally=0;
    ballx = random(400);
    if(ballx > mouseX-80 && ballx < mouseX+80){
      score++;
    }
  }
  fill(255);
  rect(mouseX-30,360,60,40);
  fill(255);
  textSize(20);
  text("Score: " + score,20,20);
  stroke(255,0,0);
  strokeWeight(4);
  line(ballx,bally,mouseX,400);
  strokeWeight(0);
}