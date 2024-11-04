void setup() {
  size(600, 600);
  Dude dude1 = new Dude(200, 300, true);    
  Dude dude2 = new Dude(400, 300, false);   
}

void draw() {
  background(255);
}

void update(Dude dude){
  
}

void show(){
  fill(col);
  ellipse (x, y, size, size);
}
