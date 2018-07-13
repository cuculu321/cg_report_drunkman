class Particle_liquid_System {
  ArrayList<Particle_liquid> particles;

  PShape particleShape;

  Particle_liquid_System(int n) {
    particles = new ArrayList<Particle_liquid>();
    particleShape = createShape(PShape.GROUP);

    for (int i = 0; i < n; i++) {
      Particle_liquid p = new Particle_liquid();
      particles.add(p);
      particleShape.addChild(p.getShape());
    }
  }

  void update() {
    for (Particle_liquid p : particles) {
      p.update();
    }
  }

  void setEmitter(float x, float y) {
    for (Particle_liquid p : particles) {
      if (p.isDead()) {
        p.rebirth(x, y);
      }
    }
  }

  void display() {
    shape(particleShape);
  }
}

class Particle_liquid {

  PVector velocity;
  float lifespan = 255;
  
  PShape part;
  float partSize;
  
  PVector gravity = new PVector(0,0.1);


  Particle_liquid() {
    partSize = random(10,30);
    part = createShape();
    part.beginShape();
    part.noStroke();
    part.texture(liquid);
    part.normal(0, 0, 1);
    part.vertex(-partSize/2, -partSize/2, 0, 0);
    part.vertex(+partSize/2, -partSize/2, liquid.width, 0);
    part.vertex(+partSize/2, +partSize/2, liquid.width, sprite.height);
    part.vertex(-partSize/2, +partSize/2, 0, liquid.height);
    part.endShape();
    
    rebirth(1000,1000);
    lifespan = random(255);
  }

  PShape getShape() {
    return part;
  }
  
  void rebirth(float x, float y) {
    float a = random(TWO_PI);
    float speed = random(0.5,4);
    velocity = new PVector(cos(a), sin(a));
    velocity.mult(speed);
    lifespan = 255;   
    part.resetMatrix();
    part.translate(x, y,100); 
    part.setTint(color(255,220,120));
  }
  
  boolean isDead() {
    if (lifespan < 0) {
     return true;
    } else {
     return false;
    } 
  }
  

  public void update() {
    lifespan = lifespan - 1;
    velocity.add(gravity);
    part.translate(velocity.x/7, abs(velocity.y));
  }
}
