class Dude {
  float posX, posY;
  float dx, dy;       // speed
  float size;
  float distance;
  float attractionConstant;
  color col;          // dude color
  boolean attracted;  // attracted/repell

  // initialize  Dude's position, attraction, and speed
  Dude(float startX, float startY, float attractionConstant, boolean attracted) {
    posX = startX;
    posY = startY;
    size = random (10, 30);
    col = color(random(255), random(255), random(255));
    this.attracted = attracted;
    this.attractionConstant = attractionConstant;
    dx = random(-0.5, 0.5);
    dy = random(-0.5, 0.5);
  }

  void update(Dude other) {
    applyAttractionOrRepulsion(other);
    collisionWithDude(other);
    updatePosition();
    wallCollision();
  }

  void applyAttractionOrRepulsion(Dude other) {
    float directionX = other.posX - posX;
    float directionY = other.posY - posY;
    distance = dist(posX, posY, other.posX, other.posY);

    // using unit vector as direction
    if (attracted) {
      dx += attractionConstant * directionX / distance;
      dy += attractionConstant * directionY / distance;
    } else {
      dx -= attractionConstant * directionX / distance;
      dy -= attractionConstant * directionY / distance;
    }
  }

  void collisionWithDude(Dude other) {
    // bounce off each others
    if (distance < ((size + other.size)/2)) {
      dx *= -1;
      dy *= -1;
    }
  }

  void updatePosition() {
    posX += dx;
    posY += dy;
  }

  // wall collision and avoid getting stuck on side
  void wallCollision() {
    if (posX < 0) {
      posX = 1;   // Move slightly away from the left edge
      dx *= -1;
    }
    if (posX > width) {
      posX = width - 1;  // Move slightly away from the right edge
      dx *= -1;
    }
    if (posY < 0) {
      posY = 1;   // Move slightly away from the top edge
      dy *= -1;
    }
    if (posY > height) {
      posY = height - 1;  // Move slightly away from the bottom edge
      dy *= -1;
    }
  }

  void show() {
    fill(col);
    ellipse (posX, posY, size, size);
  }
}
