PImage img;


int size_x = 800;
int size_y = 800;
int timer = 0;
ParticleSystem ps;
ParticleSystem ps_mid;
ParticleSystem ps_few;
ParticleSystem ps_last;
PImage sprite;

void setup(){
  size(800,800,P3D);
  img = loadImage("label.jpg");
  textureMode(IMAGE);
  sprite = loadImage("sprite.png");
  ps = new ParticleSystem(2000);
  ps_mid = new ParticleSystem(1000);
  ps_few = new ParticleSystem(500);
  ps_last = new ParticleSystem(100);
  
  hint(DISABLE_DEPTH_MASK);
}

void draw(){
  background(60,60,60);
  lights();
  timer++;
  
  if(200 <= timer && timer <= 260){
    ps.setEmitter(400,600);
 }
  if(240 <= timer && timer <=310){
    ps_mid.setEmitter(400,600);
  }
  if(290 <= timer && timer <=360){
    ps_few.setEmitter(400,600);
  }
  if(340 <= timer && timer <=400){
    ps_last.setEmitter(400,600);
  }
  if(timer >=500){
    timer = 0;
  }
  //吐瀉物の描画
  ps.update();
  ps.display();
  ps_mid.update();
  ps_mid.display();
  ps_few.update();
  ps_few.display();
  ps_last.update();
  ps_last.display();

  //下顎
  pushMatrix(); 
  translate(400, 500+timer);
   lower_mouse();
  popMatrix();
  //上顎
  pushMatrix();
   translate(400,500);
   upper_mouse();
  popMatrix();
  //ウイスキー
  pushMatrix();
  translate(600,400);
  rotateY(radians(mouseX));    //Y軸に対してマウスのX軸の動きによって角度を変える
  rotateX(radians(mouseY));  
  wisky();
  popMatrix();
}
