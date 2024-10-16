class Defender
{
  //members
  int x;
  int y;
  int speed;
  boolean crash = false;
  
  //constructors
  Defender(int x, int y, int speed)
  {
   this.x=x;
   this.y=y;
   this.speed=speed;
  }
  
  //method
  
  void run()
  {
   render();
   crash();
   }
  
  
  void render()
  {
   //draw defenders
   
   fill(255,0,0);
   rect(x,y,50,20);
   triangle(x+50,y,x+50,y+20,x+60,y+10);
   fill(0,0,255);
   rect(x,y-10,20,10);
  }

  boolean crash()
  {
   color test;
   for(int i = y-10; i<=y+20; i++)
   {
     test = get(x+65,i);
     if(test == ELLIPSE1 || test == ELLIPSE2)
     {
     return true;
     }
   }
  return false; 
  }
}
