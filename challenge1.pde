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
    scale(0.1);
    
    pushMatrix();
    camera(mouseX, mouseY, 220.0, // eyeX, eyeY, eyeZ
           0.0, 0.0, 0.0, // centerX, centerY, centerZ
           0.0, 1.0, 0.0); // upX, upY, upZ
    
    
    fill(240, 50);
    for (i = 0; i < 1000; i++) {
      translate(noise(width) + (mouseY / 60) + 2, noise(height) + 5, noise(50));
      fill(240, 50);
      rotateX(PI/6 + sin(mouseX/(i+1)));
      rotateY(PI/-3 + sin(i));
      box(60, 90, 100);
    }
    popMatrix();
  }
}

void keyPressed() {
  if (key == 'r') {
    // record
  }
}