// Welcome to Zombie Chefs!
// Zombies are bigger, and faster than before.
// However, now they also have to make it close to the door to win.

// This game has been a lot of fun to make.
// I apologize for this code being exceedingly long,
// I could've made it shorter, but I like the freedom to edit things individually.
// For the final edition I added two start screens,
// the game art, and a replay option at the end.
// I also changed some values, and made some random.

// When I added the art for the start screens it slowed the zombies down
// So I had to speed them up. Their speed on my computer is ideal for
// Not too fast, but not too slow.
// However I'm worried if this is ran on a better computer than mine,
// They will be way too fast
// If that happens please let me know and I can submit a revision


// For the art
/* @pjs preload="Zombies_1.png","Zombies_left.png","fort.jpg","title screen.png","title screen 2.png"; */
PImage screen1;
PImage screen2;
PImage zombiesleft;
PImage zombies;
PImage fort;

//Values for the zombies

int x1 = int(random(10, 50));
int x2 = int(random(10, 50));
int x3 = int(random(10, 50));
int x4 = int(random(10, 50));
int x5 = int(random(10, 50));
int x6 = int(random(10, 50));
int x7 = int(random(10, 50));
int x8 = int(random(10, 50));
int x9 = int(random(10, 50));
int x10 = int(random(10, 50));
int x11 = int(random(10, 50));
int x12 = int(random(10, 50));
int x13 = int(random(10, 50));
int x14 = int(random(10, 50));
int x15 = int(random(10, 50));
int x16 = int(random(10, 50));
int x17 = int(random(10, 50));
int x18 = int(random(10, 50));
int x19 = int(random(10, 50));
int x20 = int(random(10, 50));
int x21 = int(random(10, 50));
int x22 = int(random(10, 50));
int x23 = int(random(10, 50));
int x24 = int(random(10, 50));
int x25 = int(random(10, 50));
int y1 = int(random(10, 50));
int y2 = int(random(10, 50));
int y3 = int(random(10, 50));
int y4 = int(random(10, 50));
int y5 = int(random(10, 50));
int y6 = int(random(10, 50));
int y7 = int(random(10, 50));
int y8 = int(random(10, 50));
int y9 = int(random(-200, 200));
int y10 = int(random(-200, 200));
int y11 = int(random(-200, 200));
int y12 = int(random(-200, 200));
int y13 = int(random(-200, 200));
int y14 = int(random(-200, 200));
int y15 = int(random(-200, 200));
int y16 = int(random(-200, 200));
int y17 = int(random(-200, 200));
int y18 = int(random(-200, 200));
int y19 = int(random(-200, 200));
int y20 = int(random(-200, 200));
int y21 = int(random(-200, 200));
int y22 = int(random(-200, 200));
int y23 = int(random(-200, 200));
int y24 = int(random(-200, 200));
int y25 =int(random(-200, 200));

// Values for the gameplay

boolean Title = true;
boolean Rules = false;
boolean restart = false;
boolean startGame = false;
boolean GameOver1 = false;
boolean GameOver2 = false;
boolean zombie1 = false;
boolean zombie2 = false;
boolean zombie3 = false;
boolean zombie4 = false;
boolean zombie5 = false;
boolean zombie6 = false;
boolean zombie7 = false;
boolean zombie8 = false;
boolean zombie9 = false;
boolean zombie10 = false;
boolean zombie11 = false;
boolean zombie12 = false;
boolean zombie13 = false;
boolean zombie14 = false;
boolean zombie15 = false;
boolean zombie16 = false;
boolean zombie17 = false;
boolean zombie18 = false;
boolean zombie19 = false;
boolean zombie20 = false;
boolean zombie21 = false;
boolean zombie22 = false;
boolean zombie23 = false;
boolean zombie24 = false;
boolean zombie25 = false;

// This was my favorite screen size

void setup(){
size(720, 720);
background(#57C935);
loadImage("Zombies_1.png");
loadImage("Zombies_left.png");
loadImage("fort.jpg");
loadImage("title screen.png");
loadImage("title screen 2.png");
}



void draw() {
  
//Start screens

screen1= loadImage("title screen.png");
screen2= loadImage("title screen 2.png");


if(Title){
image(screen1, 0, 0, 720, 720);
  if(mousePressed){
      if(mouseX>=200 && mouseX <=400 && mouseY>=60 && mouseY <=200+30){
        Title= false;
        Rules= true;
      }
  }
}

if(Rules){
image(screen2, 0, 0, 720, 720);
  if(mousePressed){
      if(mouseX>=200 && mouseX <=600 && mouseY>=550 && mouseY <=700){
        Rules= false;
        startGame = true;
        zombie1= true;
      }
  }
}

if (startGame){  
  
  background(#57C935);

// Zombie Counter

  text("zombie count", 10, 10);
  
// Reset Button
  rect(450,12,30, 30);
  text("Reset", 450, 10);
    if(mousePressed){
      if(mouseX>=450 && mouseX <=450+30 && mouseY>=12 && mouseY <=12+30){
        startGame= true;
      
          setup();
          restart = true;
      
     }
   }
  
// Start Game Button

  rect(300,12,30, 30);
  text("Start Game", 285, 10);
    if(mousePressed){
      if(mouseX>=300 && mouseX <=300+30 && mouseY>=12 && mouseY <=12+30){
   
        startGame = true;
        zombie1=true;
    }
  }

// Loading Images

    zombies = loadImage("Zombies_1.png");
    zombiesleft = loadImage("Zombies_left.png");
    fort = loadImage("fort.jpg");
    
// The Fort

    image(fort, 290,330,200,100);
  
// The First Zombie

    if (zombie1){
      image(zombies, 450+x1, 460+y1, 30, 40);
      text("1", 10, 20);
    
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y1--;
          y1--;
          y1--;
        }
        if (keyCode == DOWN){
          y1++;
          y1++;
          y1++;
        }
        if (keyCode == RIGHT){
          x1++;
          x1++;
          x1++;
        }
        if (keyCode == LEFT){
          x1--;
          x1--;
          x1--;
        }
      }
    
      
//Here's the code for zombies to win.

      if (450+x1>=330 && x1+450 <= 330+100 && y1+460 >=360 && y1+460 <= 360+50){
        GameOver2 = true;
      }
     }
    if (mousePressed){
      if(mouseX>=450+x1 && mouseX <=450+x1+30 && mouseY>=460+y1 && mouseY <=460+y1+40){
        zombie1 = false;
        zombie2 = true;
    }
  }
}

// Second Zombie

    if (zombie2){
      image(zombiesleft, 0+x2, 360+y2, 30, 40);
      text("2", 10, 30);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y2--;
          y2--;
          y2--;
          y2--;
        }
        if (keyCode == DOWN){
          y2++;
          y2++;
          y2++;
          y2++;
        }
        if (keyCode == RIGHT){
          x2++;
          x2++;
          x2++;
          x2++;
        }
        if (keyCode == LEFT){
          x2--;
          x2--;
          x2--;
          x2--;
        }
      }
      if (0+x2>=330 && x2+0 <= 330+100 && y2+360 >=360 && y2+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x2 && mouseX <=0+x2+30 && mouseY>=360+y2 && mouseY <=360+y2+40){
        zombie2 = false;
        zombie3 = true;
    }
  }
}
  
//Third Zombie

    if (zombie3){
      image(zombiesleft, 360+x3, 0+y3, 30, 40);
      text("3", 10, 40);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y3--;
          y3--;
          y3--;
          y3--;
          y3--;
        }
        if (keyCode == DOWN){
          y3++;
          y3++;
          y3++;
          y3++;
          y3++;
        }
        if (keyCode == RIGHT){
          x3++;
          x3++;
          x3++;
          x3++;
          x3++;
        }
        if (keyCode == LEFT){
          x3--;
          x3--;
          x3--;
          x3--;
          x3--;
        }
       }
      if (360+x3>=330 && 360+x3 <= 330+100 && 0+y3 >=360 && 0+y3 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=360+x3 && mouseX <=360+x3+30 && mouseY>=0+y3 && mouseY <=0+y3+40){
        zombie3 = false;
        zombie4 = true;
    }
  }
}
  
// Fourth Zombie

    if (zombie4){
      image(zombies, 360+x4, 600+y4, 30, 40);
      text("4", 10, 50);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y4--;
          y4--;
          y4--;
          y4--;
          y4--;
        }
        if (keyCode == DOWN){
          y4++;
          y4++;
          y4++;
          y4++;
          y4++;
        }
        if (keyCode == RIGHT){
          x4++;
          x4++;
          x4++;
          x4++;
          x4++;
        }
        if (keyCode == LEFT){
          x4--;
          x4--;
          x4--;
          x4--;
          x4--;
        }
      }
      if (360+x4>=330 && 360+x4 <= 330+100 &&600+y4 >=360 && 600+y4 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=360+x4 && mouseX <=360+x4+30 && mouseY>=600+y4 && mouseY <=600+y4+40){
        zombie4 = false;
        zombie5 = true;
    }
  }
    }
  
// 5th Zombie

    if (zombie5){
      image(zombies, 600+x5, 0+y5, 30, 40);
      text("5", 10, 60);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y5--;
          y5--;
          y5--;
          y5--;
          y5--;
        }
        if (keyCode == DOWN){
          y5++;
          y5++;
          y5++;
          y5++;
          y5++;
        }
        if (keyCode == RIGHT){
          x5++;
          x5++;
          x5++;
          x5++;
          x5++;
        }
        if (keyCode == LEFT){
          x5--;
          x5--;
          x5--;
          x5--;
          x5--;
        }
      }
      if (600+x5>=330 && 600+x5 <= 330+100 && 0+y5 >=360 && 0+y5 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x5 && mouseX <=600+x5+30 && mouseY>=0+y5 && mouseY <=0+y5+40){
        zombie5 = false;
        zombie6 = true;
    }
  }
    }

// 6th Zombie

    if (zombie6){
      image(zombiesleft, 0+x6, 0+y6, 30, 40);
      text("6", 10, 70);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y6--;
          y6--;
          y6--;
          y6--;
          y6--;
        }
        if (keyCode == DOWN){
          y6++;
          y6++;
          y6++;
          y6++;
          y6++;
        }
        if (keyCode == RIGHT){
          x6++;
          x6++;
          x6++;
          x6++;
          x6++;
        }
        if (keyCode == LEFT){
          x6--;
          x6--;
          x6--;
          x6--;
          x6--;
        }
      }
      if (0+x6>=330 && 0+x6 <= 330+100 &&  0+y6 >=360 &&  0+y6 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x6 && mouseX <=0+x6+30 && mouseY>=0+y6 && mouseY <=0+y6+40){
        zombie6 = false;
        zombie7 = true;
    }
  }
    }
  
// 7th Zombie

    if (zombie7){
      image(zombiesleft, 0+x7, 600+y7, 30, 40);
      text("7", 10, 80);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y7--;
          y7--;
          y7--;
          y7--;
          y7--;
        }
        if (keyCode == DOWN){
          y7++;
          y7++;
          y7++;
          y7++;
          y7++;
        }
        if (keyCode == RIGHT){
          x7++;
          x7++;
          x7++;
          x7++;
          x7++;
        }
        if (keyCode == LEFT){
          x7--;
          x7--;
          x7--;
          x7--;
          x7--;
        }
      }
      if (0+x7>=330 && 0+x7 <= 330+100 && 600+y7>=360 && 600+y7 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x7 && mouseX <=0+x7+30 && mouseY>=600+y7 && mouseY <=600+y7+40){
        zombie7 = false;
        zombie8 = true;
    }
  }
    }

// 8th Zombie

    if (zombie8){
      image(zombies, 600+x8, 600+y8, 30, 40);
      text("8", 10, 90);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y8--;
          y8--;
          y8--;
          y8--;
          y8--;
        }
        if (keyCode == DOWN){
          y8++;
          y8++;
          y8++;
          y8++;
          y8++;
        }
        if (keyCode == RIGHT){
          x8++;
          x8++;
          x8++;
          x8++;
          x8++;
        }
        if (keyCode == LEFT){
          x8--;
          x8--;
          x8--;
          x8--;
          x8--;
        }
      }
      if (600+x8>=330 && 600+x8 <= 330+100 &&  600+y8 >=360 && 600+y8 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x8 && mouseX <=600+x8+30 && mouseY>=600+y8 && mouseY <=600+y8+40){
        zombie8 = false;
        zombie9 = true;
    }
  }
    }
  
// The 9th Zombie

    if (zombie9){
      image(zombies, 600+x9, 360+y9, 30, 40);
      text("9", 10, 100);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y9--;
          y9--;
          y9--;
          y9--;
          y9--;
          y9--;
        }
        if (keyCode == DOWN){
          y9++;
          y9++;
          y9++;
          y9++;
          y9++;
          y9++;
        }
        if (keyCode == RIGHT){
          x9++;
          x9++;
          x9++;
          x9++;
          x9++;
          x9++;
        }
        if (keyCode == LEFT){
          x9--;
          x9--;
          x9--;
          x9--;
          x9--;
          x9--;
        }
      }
      if (600+x9>=330 && 600+x9 <= 330+100 && 360+y9 >=360 && 360+y9 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x9 && mouseX <=600+x9+30 && mouseY>=360+y9 && mouseY <=360+y9+40){
        zombie9 = false;
        zombie10 = true;
    }
  }
    }
  
// 10th Zombie

    if (zombie10){
      image(zombiesleft, 0+x10, 360+y10, 30, 40);
      text("10", 10, 110);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y10--;
          y10--;
          y10--;
          y10--;
          y10--;
          y10--;
        }
        if (keyCode == DOWN){
          y10++;
          y10++;
          y10++;
          y10++;
          y10++;
          y10++;
        }
        if (keyCode == RIGHT){
          x10++;
          x10++;
          x10++;
          x10++;
          x10++;
          x10++;
        }
        if (keyCode == LEFT){
          x10--;
          x10--;
          x10--;
          x10--;
          x10--;
          x10--;
        }
      }
      if (0+x10>=330 && 0+x10 <= 330+100 && 360+y10 >=360 && 360+y10 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x10 && mouseX <=0+x10+30 && mouseY>=360+y10 && mouseY <=360+y10+40){
        zombie10 = false;
        zombie11 = true;
    }
  }
    }
  
// 11th Zombie

    if (zombie11){
      image(zombies, 600+x11, 360+y11, 30, 40);
      text("11", 10, 120);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y11--;
          y11--;
          y11--;
          y11--;
          y11--;
          y11--;
        }
        if (keyCode == DOWN){
          y11++;
          y11++;
          y11++;
          y11++;
          y11++;
          y11++;
        }
        if (keyCode == RIGHT){
          x11++;
          x11++;
          x11++;
          x11++;
          x11++;
          x11++;
        }
        if (keyCode == LEFT){
          x11--;
          x11--;
          x11--;
          x11--;
          x11--;
          x11--;
        }
      }
      if (600+x11>=330 && 600+x11 <= 330+100 && y11+360 >=360 && y11+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x11 && mouseX <=600+x11+30 && mouseY>=360+y11 && mouseY <=360+y11+40){
        zombie11 = false;
        zombie12 = true;
    }
  }
    }
  
// 12th Zombie

    if (zombie12){
      image(zombiesleft, 0+x12, 360+y12, 30, 40);
      text("12", 10, 130);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y12--;
          y12--;
          y12--;
          y12--;
          y12--;
          y12--;
        }
        if (keyCode == DOWN){
          y12++;
          y12++;
          y12++;
          y12++;
          y12++;
          y12++;
        }
        if (keyCode == RIGHT){
          x12++;
          x12++;
          x12++;
          x12++;
          x12++;
          x12++;
        }
        if (keyCode == LEFT){
          x12--;
          x12--;
          x12--;
          x12--;
          x12--;
          x12--;
        }
      }
      if (0+x12>=330 && 0+x12 <= 330+100 && y12+360 >=360 && y12+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x12 && mouseX <=0+x12+30 && mouseY>=360+y12 && mouseY <=360+y12+40){
        zombie12 = false;
        zombie13 = true;
    }
  }
    }
  
// 13th Zombie

    if (zombie13){
      image(zombies, 600+x13, 360+y13, 30, 40);
      text("13", 10, 140);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y13--;
          y13--;
          y13--;
          y13--;
          y13--;
          y13--;
        }
        if (keyCode == DOWN){
          y13++;
          y13++;
          y13++;
          y13++;
          y13++;
          y13++;
        }
        if (keyCode == RIGHT){
          x13++;
          x13++;
          x13++;
          x13++;
          x13++;
          x13++;
        }
        if (keyCode == LEFT){
          x13--;
          x13--;
          x13--;
          x13--;
          x13--;
          x13--;
        }
      }
      if (600+x13>=330 && 600+x13 <= 330+100 && y13+360 >=360 && y13+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x13 && mouseX <=600+x13+30 && mouseY>=360+y13 && mouseY <=360+y13+40){
        zombie13 = false;
        zombie14 = true;
    }
  }
    }
  
// 14th Zombie

    if (zombie14){
    image(zombiesleft, 0+x14, 360+y14, 30, 40);
    text("14", 10, 150);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y14--;
          y14--;
          y14--;
          y14--;
          y14--;
          y14--;
        }
        if (keyCode == DOWN){
          y14++;
          y14++;
          y14++;
          y14++;
          y14++;
          y14++;
        }
        if (keyCode == RIGHT){
          x14++;
          x14++;
          x14++;
          x14++;
          x14++;
          x14++;
        }
        if (keyCode == LEFT){
          x14--;
          x14--;
          x14--;
          x14--;
          x14--;
          x14--;
        }
      }
      if (0+x14>=330 && 0+x14 <= 330+100 && y14+360 >=360 && y14+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x14 && mouseX <=0+x14+30 && mouseY>=360+y14 && mouseY <=360+y14+40){
        zombie14 = false;
        zombie15 = true;
    }
  }
    }
  
// 15th Zombie

    if (zombie15){
      image(zombies, 600+x15, 360+y15, 30, 40);
      text("15", 10, 160);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y15--;
          y15--;
          y15--;
          y15--;
          y15--;
          y15--;
        }
        if (keyCode == DOWN){
          y15++;
          y15++;
          y15++;
          y15++;
          y15++;
          y15++;
        }
        if (keyCode == RIGHT){
          x15++;
          x15++;
          x15++;
          x15++;
          x15++;
          x15++;
        }
        if (keyCode == LEFT){
          x15--;
          x15--;
          x15--;
          x15--;
          x15--;
          x15--;
          
        }
      }
      if (600+x15>=330 && 600+x15 <= 330+100 && y15+360 >=360 && y15+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x15 && mouseX <=600+x15+30 && mouseY>=360+y15 && mouseY <=360+y15+40){
        zombie15 = false;
        zombie16 = true;
    }
  }
    }
  
// 16th Zombie

    if (zombie16){
      image(zombiesleft, 0+x16, 360+y16, 30, 40);
      text("16", 10, 170);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y16--;
          y16--;
          y16--;
          y16--;
          y16--;
          y16--;
        }
        if (keyCode == DOWN){
          y16++;
          y16++;
          y16++;
          y16++;
          y16++;
          y16++;
        }
        if (keyCode == RIGHT){
          x16++;
          x16++;
          x16++;
          x16++;
          x16++;
          x16++;
        }
        if (keyCode == LEFT){
          x16--;
          x16--;
          x16--;
          x16--;
          x16--;
          x16--;
        }
      }
      if (0+x16>=330 && 0+x16 <= 330+100 && y16+360 >=360 && y16+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x16 && mouseX <=0+x16+30 && mouseY>=360+y16 && mouseY <=360+y16+40){
        zombie16 = false;
        zombie17 = true;
    }
  }
    }
  
// 17th Zombie

    if (zombie17){
      image(zombies, 600+x17, 360+y17, 30, 40);
      text("17", 10, 180);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y17--;
          y17--;
          y17--;
          y17--;
          y17--;
          y17--;
        }
        if (keyCode == DOWN){
          y17++;
          y17++;
          y17++;
          y17++;
          y17++;
          y17++;
        }
        if (keyCode == RIGHT){
          x17++;
          x17++;
          x17++;
          x17++;
          x17++;
          x17++;
        }
        if (keyCode == LEFT){
          x17--;
          x17--;
          x17--;
          x17--;
          x17--;
          x17--;
        }
      }
      if (600+x17>=330 && 600+x17 <= 330+100 && y17+360 >=360 && y17+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x17 && mouseX <=600+x17+30 && mouseY>=360+y17 && mouseY <=360+y17+40){
        zombie17 = false;
        zombie18 = true;
    }
  }
    }
  
// 18th Zombie

    if (zombie18){
      image(zombiesleft, 0+x18, 360+y18, 30, 40);
      text("18", 10, 190);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y18--;
          y18--;
          y18--;
          y18--;
          y18--;
          y18--;
        }
        if (keyCode == DOWN){
          y18++;
          y18++;
          y18++;
          y18++;
          y18++;
          y18++;
        }
        if (keyCode == RIGHT){
          x18++;
          x18++;
          x18++;
          x18++;
          x18++;
          x18++;
        }
        if (keyCode == LEFT){
          x18--;
          x18--;
          x18--;
          x18--;
          x18--;
          x18--;
        }
      }
      if (0+x18>=330 && 0+x18 <= 330+100 && y18+360 >=360 && y18+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x18 && mouseX <=0+x18+30 && mouseY>=360+y18 && mouseY <=360+y18+40){
        zombie18 = false;
        zombie19 = true;
    }
  }
    }
  
// 19th Zombie

    if (zombie19){
      image(zombies, 600+x19, 360+y19, 30, 40);
      text("19", 10, 200);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y19--;
          y19--;
          y19--;
          y19--;
          y19--;
          y19--;
        }
        if (keyCode == DOWN){
          y19++;
          y19++;
          y19++;
          y19++;
          y19++;
          y19++;
        }
        if (keyCode == RIGHT){
          x19++;
          x19++;
          x19++;
          x19++;
          x19++;
          x19++;
        }
        if (keyCode == LEFT){
          x19--;
          x19--;
          x19--;
          x19--;
          x19--;
          x19--;
        }
      }
      if (600+x19>=330 && 600+x19 <= 330+100 && y19+360 >=360 && y19+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x19 && mouseX <=600+x19+30 && mouseY>=360+y19 && mouseY <=360+y19+40){
        zombie19 = false;
        zombie20 = true;
    }
  }
    }
  
// 20th Zombie

    if (zombie20){
      image(zombiesleft, 0+x20, 360+y20, 30, 40);
      text("20", 10, 210);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y20--;
          y20--;
          y20--;
          y20--;
          y20--;
          y20--;
        }
        if (keyCode == DOWN){
          y20++;
          y20++;
          y20++;
          y20++;
          y20++;
          y20++;
        }
        if (keyCode == RIGHT){
          x20++;
          x20++;
          x20++;
          x20++;
          x20++;
          x20++;
        }
        if (keyCode == LEFT){
          x20--;
          x20--;
          x20--;
          x20--;
          x20--;
          x20--;
        }
      }
      if (0+x20>=330 && 0+x20 <= 330+100 && y20+360 >=360 && y20+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x20 && mouseX <=0+x20+30 && mouseY>=360+y20 && mouseY <=360+y20+40){
        zombie20 = false;
        zombie21 = true;
    }
  }
    }
  
// 21st Zombie

    if (zombie21){
      image(zombies, 600+x21, 360+y21, 30, 40);
      text("21", 10, 220);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y21--;
          y21--;
          y21--;
          y21--;
          y21--;
          y21--;
        }
        if (keyCode == DOWN){
          y21++;
          y21++;
          y21++;
          y21++;
          y21++;
          y21++;
        }
        if (keyCode == RIGHT){
          x21++;
          x21++;
          x21++;
          x21++;
          x21++;
          x21++;
        }
        if (keyCode == LEFT){
          x21--;
          x21--;
          x21--;
          x21--;
          x21--;
          x21--;
        }
      }
      if (600+x21>=330 && 600+x21 <= 330+100 && y21+360 >=360 && y21+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x21 && mouseX <=600+x21+30 && mouseY>=360+y21 && mouseY <=360+y21+40){
        zombie21 = false;
        zombie22 = true;
    }
  }
    }
  
// 22nd Zombie

    if (zombie22){
      image(zombiesleft, 0+x22, 360+y22, 30, 40);
      text("22", 10, 230);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y22--;
          y22--;
          y22--;
          y22--;
          y22--;
          y22--;
        }
        if (keyCode == DOWN){
          y22++;
          y22++;
          y22++;
          y22++;
          y22++;
          y22++;
        }
        if (keyCode == RIGHT){
          x22++;
          x22++;
          x22++;
          x22++;
          x22++;
          x22++;
        }
        if (keyCode == LEFT){
          x22--;
          x22--;
          x22--;
          x22--;
          x22--;
          x22--;
        }
      }
      if (0+x22>=330 && 0+x22 <= 330+100 && y22+360 >=360 && y22+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x22 && mouseX <=0+x22+30 && mouseY>=360+y22 && mouseY <=360+y22+40){
        zombie22 = false;
        zombie23 = true;
    }
  }
    }
  
// 23rd Zombie

    if (zombie23){
      image(zombies, 600+x23, 360+y23, 30, 40);
      text("23", 10, 240);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y23--;
          y23--;
          y23--;
          y23--;
          y23--;
          y23--;
          y23--;
        }
        if (keyCode == DOWN){
          y23++;
          y23++;
          y23++;
          y23++;
          y23++;
          y23++;
          y23++;
        }
        if (keyCode == RIGHT){
          x23++;
          x23++;
          x23++;
          x23++;
          x23++;
          x23++;
          x23++;
        }
        if (keyCode == LEFT){
          x23--;
          x23--;
          x23--;
          x23--;
          x23--;
          x23--;
          x23--;
        }
      }
      if (600+x23>=330 && 600+x23 <= 330+100 && y23+360 >=360 && y23+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=600+x23 && mouseX <=600+x23+30 && mouseY>=360+y23 && mouseY <=360+y23+40){
        zombie23 = false;
        zombie24 = true;
    }
  }
    }
  
// 24th Zombie

    if (zombie24){
      image(zombiesleft, 0+x24, 360+y24, 30, 40);
      text("24", 10, 250);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y24--;
          y24--;
          y24--;
          y24--;
          y24--;
          y24--;
          y24--;
          y24--;
        }
        if (keyCode == DOWN){
          y24++;
          y24++;
          y24++;
          y24++;
          y24++;
          y24++;
          y24++;
          y24++;
        }
        if (keyCode == RIGHT){
          x24++;
          x24++;
          x24++;
          x24++;
          x24++;
          x24++;
          x24++;
          x24++;
        }
        if (keyCode == LEFT){
          x24--;
          x24--;
          x24--;
          x24--;
          x24--;
          x24--;
          x24--;
          x24--;
        }
      }
      if (0+x24>=330 && 0+x24 <= 330+100 && y24+360 >=360 && y24+360 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=0+x24 && mouseX <=0+x24+30 && mouseY>=360+y24 && mouseY <=360+y24+40){
        zombie24 = false;
        zombie25 = true;
  }
}
    }

// 25th Zombie

    if (zombie25){
    image(zombies, 550+x25, 560+y25, 30, 40);
    text("25", 10, 260);
    keyPressed();
      if (key == CODED){
        if (keyCode == UP){
          y25--;
          y25--;
          y25--;
          y25--;
          y25--;
          y25--;
          y25--;
          y25--;
        }
        if (keyCode == DOWN){
          y25++;
          y25++;
          y25++;
          y25++;
          y25++;
          y25++;
          y25++;
          y25++;
        }
        if (keyCode == RIGHT){
          x25++;
          x25++;
          x25++;
          x25++;
          x25++;
          x25++;
          x25++;
          x25++;
        }
        if (keyCode == LEFT){
          x25--;
          x25--;
          x25--;
          x25--;
          x25--;
          x25--;
          x25--;
          x25--;
        }
      }
      if (550+x25>=330 && 550+x25 <= 330+100 && y25+560 >=360 && y25+560 <= 360+50){
        GameOver2 = true;
      }
    
    if (mousePressed){
      if(mouseX>=550+x25 && mouseX <=550+x25+30 && mouseY>=560+y25 && mouseY <=560+y25+40){
        zombie25 = false;
        GameOver1 = true;
    }
  }
    }
    if(GameOver1){
      fill(0);
      rect(0,0,720,720);
      fill(200);
      text("Player One Wins!", 315, 360);

//Play Again Button

       text("Play Again?", 330, 395);
      rect(315,400,100, 30);
      if(mousePressed){
      if(mouseX>=30 && mouseX <=350+50 && mouseY>=400 && mouseY <=400+30){
        startGame= true;
        GameOver1 = false;
      
          setup();
          restart = true;
     
     }
   }
      
    }
    if(GameOver2){
      fill(0);
      rect(0,0,720,720);
      fill(200);
      text("Player Two Wins!", 315, 360);
      
//Play Again Button

      text("Play Again?", 330, 395);
      rect(315,400,100, 30);
      if(mousePressed){
      if(mouseX>=30 && mouseX <=350+50 && mouseY>=400 && mouseY <=400+30){
        startGame= true;
        GameOver2 = false;
      
          setup();
          restart = true;
     
     }
   }
   }
   if(restart){
        x1 = int(random(10, 50));
        x2 = int(random(10, 50));
        x3 = int(random(10, 50));
        x4 = int(random(10, 50));
        x5 = int(random(10, 50));
        x6 = int(random(10, 50));
        x7 = int(random(10, 50));
        x8 = int(random(10, 50));
        x9 = int(random(10, 50));
        x10 = int(random(10, 50));
        x11 = int(random(10, 50));
        x12 = int(random(10, 50));
        x13 = int(random(10, 50));
        x14 = int(random(10, 50));
        x15 = int(random(10, 50));
        x16 = int(random(10, 50));
        x17 = int(random(10, 50));
        x18 = int(random(10, 50));
        x19 = int(random(10, 50));
        x20 = int(random(10, 50));
        x21 = int(random(10, 50));
        x22 = int(random(10, 50));
        x23 = int(random(10, 50));
        x24 = int(random(10, 50));
        x25 = int(random(10, 50));
        y1 = int(random(10, 50));
        y2 = int(random(10, 50));
        y3 = int(random(10, 50));
        y4 = int(random(10, 50));
        y5 = int(random(10, 50));
        y6 = int(random(10, 50));
        y7 = int(random(10, 50));
        y8 = int(random(10, 50));
        y9 = int(random(-200, 200));
        y10 = int(random(-200, 200));
        y11 = int(random(-200, 200));
        y12 = int(random(-200, 200));
        y13 = int(random(-200, 200));
        y14 = int(random(-200, 200));
        y15 = int(random(-200, 200));
        y16 = int(random(-200, 200));
        y17 = int(random(-200, 200));
        y18 = int(random(-200, 200));
        y19 = int(random(-200, 200));
        y20 = int(random(-200, 200));
        y21 = int(random(-200, 200));
        y22 = int(random(-200, 200));
        y23 = int(random(-200, 200));
        y24 = int(random(-200, 200));
        y25 = int(random(-200, 200));
        zombie1 = true;
        zombie2 = false;
        zombie3 = false;
        zombie4 = false;
        zombie5 = false;
        zombie6 = false;
        zombie7 = false;
        zombie8 = false;
        zombie9 = false;
        zombie10 = false;
        zombie11 = false;
        zombie12 = false;
        zombie13 = false;
        zombie14 = false;
        zombie15 = false;
        zombie16 = false;
        zombie17 = false;
        zombie18 = false;
        zombie19 = false;
        zombie20 = false;
        zombie21 = false;
        zombie22 = false;
        zombie23 = false;
        zombie24 = false;
        zombie25 = false;

        restart = false;
}

}
