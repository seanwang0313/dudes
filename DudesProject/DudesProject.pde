Dude dude1;
Dude dude2;

void setup() {
  size(600, 600);
  dude1 = new Dude(random(0, 600), random(0, 600), 0.25, true);    
  dude2 = new Dude(random(0, 600), random(0, 600), 0.1, false);   
}

void draw() {
  background(255);
  
  dude1.update(dude2);
  dude1.show();
  dude2.update(dude1);
  dude2.show();
}
