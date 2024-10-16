color ELLIPSE1 = color(0,255,0);
color ELLIPSE2 = color(50,100,0);

class Alien
{
    //members
  int x;
  int y;
  int velocity;
  
  //constructor
  Alien(int x, int y, int velocity)
  {
  this.x=x;
  this.y=y;
  this.velocity=velocity;
  }
  
  //methods
  
  void run()
  {
   render();
   move();
  }
  
  void move()
  {
    y+=random(10)-5;
    x-=velocity;
    if(x<=0)
    x=width+25;
    if(y<=0)
    y=height + 20;
  }

  void render()
  {
    // draw an alien
     fill(ELLIPSE1);
     ellipse(x,y,30,30);
     fill(ELLIPSE2);
     ellipse(x,y,50,15);
  }

}
