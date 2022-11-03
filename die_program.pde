Die myDie;
int rows;
int cols;
int diceSize;
int xPadding;
int yPadding;
int x;
int y;
int total;

void setup() {
  noLoop();
  size (500, 500);
  reset();
  System.out.print(xPadding);
}

void draw() {
  //myDie.roll();
  //myDie.show();
  background (255);
  reset();
  for (int row = 0; row < rows; row++) {
    for (int col=0; col< cols; col++) {
      myDie=new Die (x, y, diceSize);
      myDie.roll();
      myDie.show();
      total+=myDie.face;
      x+=diceSize+xPadding;
    }
    y+=(diceSize+yPadding);
    x=xPadding;
  }
  System.out.println(total);
  fill (0);
  text(total, width/2, height);
  fill (255);
}

void mousePressed()
{
  redraw();
}

void reset() {
  rows=11;
  cols=10;
  total=0;
  diceSize=25;
  xPadding=(width-(diceSize*cols))/(cols+1);
  yPadding=(height-(diceSize*rows))/(rows+2);
  x=xPadding;
  y=yPadding;
}
