PImage img;


int size_x = 800;
int size_y = 800;
int timer = 0;
ParticleSystem ps;
PImage sprite;

void setup(){
  size(800,800,P3D);
  img = loadImage("label.jpg");
  textureMode(IMAGE);
  sprite = loadImage("sprite.png");
  ps = new ParticleSystem(10000);
  
  hint(DISABLE_DEPTH_MASK);
}

void draw(){
  background(60,60,60);
  lights();
  timer++;
  
  ps.update();
  ps.display();
  ps.setEmitter(400,700);
  
  if(timer == 200){
    timer = 0;
  }
  
  pushMatrix();
  translate(400, 600+timer);
   lower_mouse();
  popMatrix();
  
  pushMatrix();
   translate(400,600);
   upper_mouse();
  popMatrix();
  
  pushMatrix();
  translate(600,400);
  rotateY(radians(mouseX));    //Y軸に対してマウスのX軸の動きによって角度を変える
  rotateX(radians(mouseY));  
  wisky();
  popMatrix();
}
