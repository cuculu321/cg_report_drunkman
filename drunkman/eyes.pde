void makeEyesObj()
{
 //黒目
 pushMatrix();
 fill(100);
 noStroke();
 translate(0, 0, 50);
 sphere(35);
 popMatrix();
 //白目
 pushMatrix();
 fill(255);
 translate(0, 0, 0);
 sphere(70);
 popMatrix();
}
