void draw_texture_label() 
{
  pushMatrix();
  fill(255, 255);
  //rotateY(map(mouseX, 0, width, -PI, PI));
  //rotateZ(PI/6);
  beginShape();
  texture(img);

  vertex(-25, -25, 31, 0.0, 0.0);
  vertex(25, -25, 31, img.width, 0);
  vertex(25, 25, 31, img.width, img.height);
  vertex(-25, 25, 31, 0, img.height);
  
  endShape();
  popMatrix();
}
