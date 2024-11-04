class Dude {
  float x, y;         // position
  float dx, dy;       // speed
  float size;         // size
  color col;          // color
  boolean attracted;  // attracted/repell
  
  // initialize  Dude's position, attraction, and speed
  Dude(float startX, float startY, boolean attracted) {
    x = startX;
    y = startY;
    size = 30;
    col = color(random(255), random(255), random(255));
    this.attracted = attracted;
    dx = random(-2, 2);
    dy = random(-2, 2);
  }
} 

void setup() {
  size(600, 600);
  Dude dude1 = new Dude(200, 300, true);    
  Dude dude2 = new Dude(400, 300, false);   
}

void draw() {
  background(255);
  // yes
}
