int x1 = 0;
int y1 = 0;
int r = 50;
int g = 20;
int b = 10;

void setup() {
  size(900, 440);
  background(0);
}

void draw() {
  fill(r+random(50,100),g+ random(27,75),b+random(75, 125));
  triangle(x1+40, y1+305, x1+40, y1+320, x1+90, y1+320);
  circle(x1+75, y1+320, 10);
  circle(x1+45, y1+320, 10);
  
  
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