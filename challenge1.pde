int i;

void setup() {
  size(1000, 1000, P3D);
  stroke(0, 50);
}

void draw() {
  // Reset frame
  background(15, 15, 125);
  
  for (i = 0; i < 500; i++) {
    // Scale
    pushMatrix();
    scale(noise(1));
    
    // TODO track objects
    // TODO clear frame on each draw
    // Change height of the camera with mouseY
    camera(mouseX, mouseY, 220.0, // eyeX, eyeY, eyeZ
           0.0, 0.0, 0.0, // centerX, centerY, centerZ
           0.0, 1.0, 0.0); // upX, upY, upZ
    
    
    fill(240, 50);
    for (i = 0; i < 1000; i++) {
      translate(noise(width) + (mouseY / 60), noise(height), noise(50));
      fill(240, 50);
      rotateX(PI/6 + sin(mouseX / width));
      rotateY(PI/-3 + cos(mouseY / height));
      box(60, 90, 100);
    }
    popMatrix();
  }
}