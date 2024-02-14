/* Niklas Hagemann, Recreating the past class with Zach Lieberman, spring 2024 @MIT */
/* initially "blind" coding ~
I saw the art-work last week during class, now trying to re-create from memory : let's see how long that lasts
*/

color bg_col = color(220, 220, 200);
float x_rect = 50;
float y_rect = 50;
float width_rect = 12;
float height_rect = 70;
float offset = width_rect;
float y_offset = height_rect - 20;
int cols = 33;
int rows = 7;
int perturb = 2; // random perturbations
int y_perturb = 12; // for the more pronounced y fluctuations
boolean start = true;


void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  while (start) {
    background(bg_col);
    noStroke();
    translate(width_rect/2, height_rect/2); // because using CENTER mode.
    
    for (int i=0; i<rows; i++) { // rows
      for (int j=0; j<cols; j++) { // columns
        fill(50, 80, 200, 100+random(-perturb, perturb));
        rect(x_rect + j*offset + random(-perturb, perturb), y_rect + i*y_offset + random(-y_perturb, y_perturb), width_rect, height_rect);
      }
    }
    start = false;
  }
}

void mousePressed() {
  start = true;
}
