void upper_mouse(){
  pushMatrix();
  upper_tooth();
  upper_lip();
  popMatrix();
}

void lower_mouse(){
  pushMatrix();
  lower_tooth();
  lower_lip();
  popMatrix();
}


void upper_lip(){
  pushMatrix();
  fill(255,200,200);
  noStroke();
  translate(0,0);
  scale(120,30,30);
  box(1);
  popMatrix();
}


void upper_tooth(){
   pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(44,20,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(22,20,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(0,20,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
   pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(-22,20,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(-44,20,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
}

void lower_lip(){
  pushMatrix();
  fill(255,200,200);
  noStroke();
  translate(0,60);
  scale(120,30,30);
  box(1);
  popMatrix();
}

void lower_tooth(){
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(44,40,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(22,40,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(0,40,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(-22,40,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(255,255,255);
  noStroke();
  translate(-44,40,-10);
  scale(20,10,10);
  box(1);
  popMatrix();
}
