class Die //models one single dice cube
{
  int face;
  color c;
  int x;
  int y;
  int size;

  //member variable declarations here

  Die(int x_, int y_, int size_) {
    //constructor
    x=x_;
    y=y_;
    size=size_;
    //c=(250,0,0);
  }
  void show() {
    rect(x, y, size, size);
    textSize(size);
    textAlign(CENTER);
    fill(0);
    if (face==1) {
      //do something
      text("1",x+(size/2), y+(size));
    } else if (face==2) {
      //do something else
        text("2",x+(size/2), y+(size));
    } else if (face==3) {
      //do something else
        text("3",x+(size/2), y+(size));
    } else if (face==4) {
      //do something else
        text("4",x+(size/2), y+(size));
    } else if (face==5) {
      //do something else
        text("5",x+(size/2), y+(size));
    } else if (face==6) {
      //do something else
        text("6",x+(size/2), y+(size));
    }
    fill(255);
  }
  void roll() {
    face=(int)(Math.random()*6)+1;
  }
}
