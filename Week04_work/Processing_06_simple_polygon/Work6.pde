void setup() 
{
  size(640, 360);
}

void draw() 
{
  background(102);
  pushMatrix();
    translate(width*0.5, height*0.5); 
    //rotate(frameCount / 200.0); -> rotate Triangle 
    polygon(0, 0, 82, 3);  // Triangle
  popMatrix();
}


void polygon(float x, float y, float radius, int npoints)
{
  float angle = TWO_PI / npoints;
  beginShape();  // drawing start
  for (float a = 0; a < TWO_PI; a += angle) 
  {
    float sx = x + cos(a) * radius;  // drawing formula
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);  // drawing end
}
