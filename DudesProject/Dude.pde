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
    size = random(10, 30);
    col = color(random(255), random(255), random(255));
    this.attracted = attracted;
    dx = random(-2, 2);
    dy = random(-2, 2);
  }

  void update(Dude other) {
    float directionX = other.x - x;
    float directionY = other.y - y;
    float distance = dist(x, y, other.x, other.y);
    
// create attraction and repulsion effect on the two dudes
// using unit vector as direction
    if (attracted){
      dx += 0.02 * directionX / distance; 
      dy += 0.02 * directionY / distance;
    } else{
      dx -= 0.02 * directionX / distance;
      dy -= 0.02 * directionY / distance;
    }

// update position by incrementing
    x += dx;
    y += dy;
  }

  void show() {
    fill(col);
    ellipse (x, y, size, size);
  }
}
