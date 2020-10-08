Die vis;
void setup()
  {
    size(690,750);
    noLoop();
  }
void draw()
 {
  int sum = 0;
  background(150);
  Die vis;
  for(int j = 0; j < 9; j++){
    for (int i = 0; i < 9; i++){
      vis = new Die(65+70*i,125+j*70);
      vis.roll();
      vis.show();
      sum += vis.num();
      }
    }
  textSize(30);
  textAlign(CENTER);
  text(sum,345,70);
  }
void mousePressed()
  {
      redraw();
  }
class Die
  {
      int myX, myY, dots, colors;
      Die(int x, int y)
      {
          myX = x;
          myY = y;
          dots = (int)((Math.random()*6)+1);
          colors = color(((int)(Math.random()*255)+1),((int)(Math.random()*255)+1),((int)(Math.random()*255)+1));
      }
      void roll()
      {
        dots = (int)((Math.random()*6)+1);
        colors = color(((int)(Math.random()*255)+1),((int)(Math.random()*255)+1),((int)(Math.random()*255)+1));
      }
      int num(){
        return(dots);
      }
      void show()
      {
        fill(colors);
        rect(myX - 25,myY - 25,50,50);
        if (dots == 1){
          fill(0,0,0);
          ellipse(myX,myY,10,10);
        }
        else if (dots == 2){
          fill(0,0,0);
          ellipse(myX + 15,myY + 15,10,10);
          ellipse(myX - 15,myY - 15,10,10);
        }
        else if (dots == 3){
          fill(0,0,0);
          ellipse(myX,myY,10,10);
          ellipse(myX + 15,myY + 15,10,10);
          ellipse(myX - 15,myY - 15,10,10);
        }
        else if (dots == 4){
          fill(0,0,0);
          ellipse(myX + 15,myY + 15,10,10);
          ellipse(myX - 15,myY - 15,10,10);
          ellipse(myX + 15,myY - 15,10,10);
          ellipse(myX - 15,myY + 15,10,10);
        }
        else if (dots == 5){
          fill(0,0,0);
          ellipse(myX,myY,10,10);
          ellipse(myX + 15,myY + 15,10,10);
          ellipse(myX - 15,myY - 15,10,10);
          ellipse(myX + 15,myY - 15,10,10);
          ellipse(myX - 15,myY + 15,10,10);
        }
        else if (dots == 6){
          fill(0,0,0);
          ellipse(myX + 15,myY,10,10);
          ellipse(myX - 15,myY,10,10);
          ellipse(myX + 15,myY + 15,10,10);
          ellipse(myX - 15,myY - 15,10,10);
          ellipse(myX + 15,myY - 15,10,10);
          ellipse(myX - 15,myY + 15,10,10);
        }
      }
  }
