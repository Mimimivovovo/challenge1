final int frameEnd = 500;

void setup() {
  size(1000, 1000, P3D);
  background(135, 15, 15);
  stroke(0, 50);
  fill(255, 200);
  //ortho();
}

void draw() {
  pushMatrix();
  //translate(0, 0, random(200));
  scale(random(1));
  //fill(255, 200);
  //ellipse(mouseX, mouseY, 50, 20);
  //fill(0);
  //ellipse(mouseX + 5, mouseY + 2, 10, 10);
  //translate(mouseX + random(300), mouseY + random(400));
  fill(240,50);
  if (frameCount % 5 == 0 && frameCount < frameEnd) {
    for (int i = 0; i < random(20000); i++) {
      translate(random(width), random(height), random(50));
      fill(240, 50);
      rotateX(PI/6);
      rotateY(PI/-3);
      box(60, 90, 100);
    }
  }
  popMatrix();
}