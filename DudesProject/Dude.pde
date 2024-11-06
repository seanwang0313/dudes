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
    size = 200;
    col = color(random(255), random(255), random(255));
    this.attracted = attracted;
    dx = random(-1, 1);
    dy = random(-1, 1);
  }

  void update(Dude other) {
    float directionX = other.x - x;
    float directionY = other.y - y;
    float distance = dist(x, y, other.x, other.y);

    // create attraction and repulsion effect on the two dudes
    // using unit vector as direction
    if (attracted) {
      dx += 0.02 * directionX / distance;
      dy += 0.02 * directionY / distance;
    } else {
      dx -= 0.02 * directionX / distance;
      dy -= 0.02 * directionY / distance;
    }
    
    // bounce off each others
    if(distance < ((size + other.size)/2)){
      dx *= -1;
      dy *= -1;
    }

    // update position by incrementing
    x += dx;
    y += dy;
    
    // bounce off wall
    if (x < 0 || x > width) {
      dx *= -1;
    }
    if (y < 0 || y > height) {
      dy *= -1;
    }
  }

  void show() {
    fill(col);
    ellipse (x, y, size, size);
  }
}
