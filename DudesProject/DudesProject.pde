void setup() {
  size(600, 600);
  Dude dude1 = new Dude(400, 200, true);    
  Dude dude2 = new Dude(0, 500, false);   
}

void draw() {
  background(255);
  dude1.update(dude2);
  dude1.show();
  
  dude2.update(dude1);
  dude2.show();
}
