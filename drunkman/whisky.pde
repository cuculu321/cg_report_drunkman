void wisky(){
   pushMatrix();
    bottle();
    draw_texture_label();
    popMatrix();
}

void bottle(){
  
   pushMatrix();
  fill(255,220,120);
  noStroke();
  translate(0,0);
  scale(55,150,55);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(240,240,240,100);
  
  translate(0,-100);
  scale(30,30,30);
  pillar(1,0.3,0.5);
  popMatrix();
  
  pushMatrix();
  fill(240,240,240,100);
  translate(0,0);
  scale(60,165,60);
  box(1);
  popMatrix();
}

void pillar(float length, float radius1 , float radius2){
  
  float x,y,z;
  pushMatrix();
  //上面の作成
  beginShape(TRIANGLE_FAN);
  y = -length / 2;
  vertex(0, y, 0);
  for(int deg = 0; deg <= 360; deg = deg + 10){
    x = cos(radians(deg)) * radius1;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
  }
  endShape();              //底面の作成
  beginShape(TRIANGLE_FAN);
  y = length / 2;
  vertex(0, y, 0);
  for(int deg = 0; deg <= 360; deg = deg + 10){
    x = cos(radians(deg)) * radius2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  //側面の作成
  beginShape(TRIANGLE_STRIP);
  for(int deg =0; deg <= 360; deg = deg + 5){
    x = cos(radians(deg)) * radius1;
    y = -length / 2;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
    x = cos(radians(deg)) * radius2;
    y = length / 2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  popMatrix();
}
