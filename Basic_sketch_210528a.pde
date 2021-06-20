float innerR=65;
float gearWheelInnerR=85;
float gearWheelOuterR=100;
float centerX,centerY;

void setup() {
  centerX = 0;
  centerY = 0;

  size(900,500);
}

void draw(){
  boolean outerFlag = false;
  background(255);
  shape();
 
  push();
  translate(282,137);
  rotate(frameCount/200.0);
  beginShape();
  for(int i = 0; i < 360; i += 10){
    fill(185,140,67);
    float r = outerFlag ? gearWheelOuterR : gearWheelInnerR;
    float x = cos(radians(i)) * r + centerX;
    float y = sin(radians(i)) * r + centerY;
    vertex(x, y);
    r = outerFlag ? gearWheelInnerR : gearWheelOuterR;
    x = cos(radians(i)) * r + centerX;
    y = sin(radians(i)) * r + centerY;
    vertex(x, y);
    outerFlag = !outerFlag;
  }
  endShape(CLOSE);
  ellipse(centerX, centerY, innerR, innerR);
  pop();
  
  push();
  translate(618,137);
  rotate(frameCount/200.0);
  beginShape();
  for(int i = 0; i < 360; i += 10){
    fill(185,140,67);
    float r = outerFlag ? gearWheelOuterR : gearWheelInnerR;
    float x = cos(radians(i)) * r + centerX;
    float y = sin(radians(i)) * r + centerY;
    vertex(x, y);
    r = outerFlag ? gearWheelInnerR : gearWheelOuterR;
    x = cos(radians(i)) * r + centerX;
    y = sin(radians(i)) * r + centerY;
    vertex(x, y);
    outerFlag = !outerFlag;
  }
  endShape(CLOSE);
  ellipse(centerX, centerY, innerR, innerR);
  pop();
}

 
void shape(){
   
  fill(183,107,31);
  ellipse(282,137,180,190);
  ellipse(282,137,20,20);
 
  noFill();
  ellipse(282,137,100,100);
  ellipse(282,137,150,150);

  line(282,137,230,215);
  line(282,137,283,43);
  line(282,137,400,200);

  fill(183,107,31);
  ellipse(618,137,180,190);
  ellipse(618,137,20,20);
 
  noFill();
  ellipse(618,137,100,100);
  ellipse(618,137,150,150);
 
 
  line(618,137,560,230);
  line(618,137,618,43);
  line(618,137,690,193);

  fill(131,137,128);
  ellipse(446,300,320,320);


  fill(742,527,252);
  ellipse(401,289,100,190);
  ellipse(491,289,100,190);
  ellipse(445,375,210,90);
 
  fill(178,169,169);
  rect(280,230,20,60);
  rect(580,230,20,60);

  fill(193,8,8);
  beginShape();
  vertex(300,290);
  vertex(400,320);
  vertex(440,270);
  vertex(480,320);
  vertex(580,290);
  vertex(580,230);
  vertex(300,230);
  
  endShape();
  
}
