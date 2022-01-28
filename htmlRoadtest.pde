int x1 = 0;
int y1 = 0;
int r = 60;
int g = 40;
int b = 80;

void setup() {
  size(900, 440);
  background(0);
}

void draw() {
  fill(r, g, b);
  triangle(x1+40, y1+305, x1+40, y1+320, x1+90, y1+320);
 
  ellipse(x1+75, y1+320, 10, 10);
  ellipse(x1+45, y1+320, 10, 10);
  
  
      keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y1--;
          y1--;
          y1--;
          r++;
        }
        if (keyCode == DOWN){
          y1++;
          y1++;
          y1++;
          r--;
        }
        if (keyCode == RIGHT){
          x1++;
          x1++;
          x1++;
          g++;
        }
        if (keyCode == LEFT){
          x1--;
          x1--;
          x1--;
          g--;
        }
      }
}
