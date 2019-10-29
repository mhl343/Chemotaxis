Spaceship[]toby;
Star [] ross;
void setup() {
  size (600, 600);
  toby= new Spaceship [50];
  for (int i=0; i<toby.length; i++) {
    toby [i]=new Spaceship ();
  }
  ross=new Star [80];
  for (int i=0; i<ross.length; i++) {
    ross [i]=new Star();
  }
}

void draw() {
  background (4, 76, 175);

  for (int i=0; i<toby.length; i++) {
    toby[i].walk();
    toby[i].show();
  }

  for (int i=0; i<ross.length; i++) {
    ross[i].walk();
    ross[i].show();
  }
}

class Spaceship {
  int myX, myY, myColor;
  Spaceship() {
    myX=300;
    myY=300;
  }
  void walk() {
    myColor=color (11, 209, 55);
    if (mouseX>myX) {
      myX=myX+(int)(Math.random()*5+2);
    } else {
      myX=myX+(int)(Math.random()*5-5);
    }
    if (mouseY>myY) {
      myY=myY+(int)(Math.random()*5+2);
    } else {
      myY=myY+(int)(Math.random()*5-5);
    }
  }
  void show() {
    fill (myColor);
    noStroke();
    ellipse (myX, myY-20, 140, 120);
    fill (myColor);
    ellipse (myX, myY, (int)(Math.random()*35*10), (int)(Math.random()*50+40));

    fill (0);
    textSize(35);
    text("UFO", myX-28, myY);
  }
}


class Star {
  int myX, myColor;
  Star() {
    myX=(int)(Math.random()*600);
  }
  void walk() {
    myColor=color (242, 250, 139);
    myX=myX+(int)(Math.random()*5-2.5);
  }
  void show() {
    fill (myColor);
    noStroke();
    ellipse (myX, (int)(Math.random()*600), 5, 5);
  }
}