void setup() {
  size(300,300);
 
}

void draw() {
  
  background(255,255,255);  // background color (r,g,b)
  fill(0);   
  
  text("Hello Strings! " + str(frameCount),10,20); // string(Frame Count) , x=10,y=20 
  String buf = String.format("%06d", frameCount); // buf = 000000 -> Frame Count
  text(buf, 10,50); 
  
  
  fill(255/2);      
  text("Hello Strings!",10,100);
  fill(255/3);      
  text("Hello Strings!",10,150);
}