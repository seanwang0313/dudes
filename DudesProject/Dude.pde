class Dude {
  float posX, posY;
  float dx, dy;       // speed
  float size;
  float attractionConstant;
  color col;
  boolean attracted;  // attracted/repell

  // initialize  Dude's position, attraction, and speed
  Dude(float startX, float startY, float attractionConstant, boolean attracted) {
    posX = startX;
    posY = startY;
    size = random (10, 30);
    col = color(random(255), random(255), random(255));
    this.attracted = attracted;
    this.attractionConstant = attractionConstant;
    dx = random(-1, 1);
    dy = random(-1, 1);
  }

  void update(Dude other) {
    float directionX = other.posX - posX;
    float directionY = other.posY - posY;
    float distance = dist(posX, posY, other.posX, other.posY);

    // create attraction and repulsion effect on the two dudes
    // using unit vector as direction
    if (attracted) {
      dx += attractionConstant * directionX / distance;
      dy += attractionConstant * directionY / distance;
    } else {
      dx -= attractionConstant * directionX / distance;
      dy -= attractionConstant * directionY / distance;
    }

    // bounce off each others
    if (distance < ((size + other.size)/2)) {
      dx *= -1;
      dy *= -1;
    }

    // update position by incrementing
    posX += dx;
    posY += dy;

    // bounce off wall
    if (posX < 0 || posX > width) {
      dx *= -1;
    }
    if (posY < 0 || posY > height) {
      dy *= -1;
    }
  }

  void show() {
    fill(col);
    ellipse (posX, posY, size, size);
  }
}
