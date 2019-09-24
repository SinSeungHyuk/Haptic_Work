void setup() {
  size(100, 100); // size setting
}

void draw() {
  background(204); // background color
  line(0, 0, mouseX, mouseY); // draw line (start point 0,0 , mouse point x,y)
}

void mousePressed() {
  save("line.jpg");  // mouse pressed -> save file "line.jpg"
  println("saved..."); // save comment
}