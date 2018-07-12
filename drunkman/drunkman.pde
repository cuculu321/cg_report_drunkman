PImage img;

int size_x = 800;
int size_y = 800;
int timer = 0;
ParticleSystem ps;
ParticleSystem ps_mid;
ParticleSystem ps_few;
ParticleSystem ps_last;
PImage sprite;

float angleX;
float angleY;
int drunk_level;

void setup(){
  size(800,800,P3D);
  img = loadImage("label.jpg");
  textureMode(IMAGE);
  sprite = loadImage("sprite.png");
  ps = new ParticleSystem(2000);
  ps_mid = new ParticleSystem(1000);
  ps_few = new ParticleSystem(500);
  ps_last = new ParticleSystem(100);
  
  //hint(DISABLE_DEPTH_MASK);
}

void draw(){
  background(60,60,60);
  ambientLight(100, 100, 100); 
  lightSpecular(50, 0, 0);
  directionalLight(255, 255, 255, -1, 1, -1);
  
  if(drunk_level >= 300){
    timer++;
    if(timer <= 60){
      ps.setEmitter(400,600);
   }
    if(40 <= timer && timer <=110){
      ps_mid.setEmitter(400,600);
    }
    if(190 <= timer && timer <=160){
      ps_few.setEmitter(400,600);
    }
    if(140 <= timer && timer <=200){
      ps_last.setEmitter(400,600);
    }
    if(timer >=300){
      timer = 0;
      drunk_level = 0;
    }
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
  
 //マウスの方向を取得する
 angleX = 10*atan2(height/2, mouseY);
 angleY = -10*atan2(width/2, mouseX);
 
 //左目
 pushMatrix();
 translate(300, 300, 0);
 //マウスの方向を向く
 rotateX(angleX);
 rotateY(angleY);
 //目の描画
 makeEyesObj();
 popMatrix();
 
 //右目
 pushMatrix();
 translate(500, 300, 0);
 rotateX(angleX);
 rotateY(angleY);
 makeEyesObj();
 popMatrix();

  //下顎
  pushMatrix(); 
  if(timer <= 100){
    translate(400, 500+timer);
  }else{
    translate(400,100);
  }
   lower_mouse();
  popMatrix();
  //上顎
  pushMatrix();
   translate(400,500);
   upper_mouse();
  popMatrix();
  //ウイスキー
  pushMatrix();
  translate(600,400,100);
  rotateY(angleY);    //Y軸に対してマウスのX軸の動きによって角度を変える 
  rotateX(angleX);
  wisky();
  popMatrix();
  
  println(drunk_level);
  if(8.4 <= angleX && angleX <= 8.7){
    if(-5.3 <= angleY && angleY <= -4.6){
      drunk_level++;
    }
  }
}
