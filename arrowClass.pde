class Arrow 
{
  int x;
  int y;
  int size = 50;
  int deltaX; 
  int deltaY;
  int x2;
  int y2;
  int otherx;
  int otherx2;
  int othery;
  int othery2;

  PImage aD, aL, aR, aU;

  Arrow(int x, int y, int deltaX, int deltaY) 
  {
    this.x = x;
    this.y = y;
    this.deltaX = deltaX;
    this.deltaY = deltaY;
    aD = loadImage("arrowDown.png");
    aL= loadImage("arrowLeft.png");
    aR = loadImage("arrowRight.png");
    aU = loadImage("arrowUp.png");
  }
  
  void run() 
  {
    render();
    move();
  }
  

  void render() 
  {
    if (deltaX == -1 && deltaY == -1)
      image(aU,x,y,size,size);
      
    else if (deltaX == 1 && deltaY == -1)
    image(aR,x,y,size,size);
    
    else if (deltaX == -1 && deltaY == 1)
    image(aL,x,y,size,size);
    
    else if (deltaX == 1 && deltaY == 1)
    image(aD,x,y,size,size);
  }

  void sideHit() 
  {
    if (y<=0) //hit top
     deltaY = - deltaY;
     
    if (x<=0) //hit left
    deltaX = - deltaX;
     
    if (y>=height-size) // hit bottom
     deltaY = - deltaY;
     
    if(x>=width-size) // hit right
    deltaX = - deltaX;
  }
   
void collide(Arrow other)
  {       
    boolean distX1 = false;
    boolean distY1 = false;
    
    x2 = x+size;
    y2 = y+size;
    
    otherx = other.x;
    otherx2 = other.x+size;
    othery = other.y;
    othery2 = other.y+size;
    
    if(abs(otherx-x2)>=0 && abs(otherx-x2)<=1)
    distX1 = true;
    
    if(abs(othery-y2)>=0 && abs(othery-y2)<=1)
    distY1 = true;
    
    if (distX1==true)
        {
          if((y>=othery && y<=othery2)||(y2>=othery && y2<=othery2))
          {
            deltaX=-deltaX;
            other.deltaX=-other.deltaX;
          }
        }
                
    if (distY1==true)
        {
          if((x>=otherx && x<=otherx2)||(x2>=otherx && x2<=otherx2))
          {
            deltaY=-deltaY;
            other.deltaY=-other.deltaY;
          }
        }  
  }

    void move() 
  {
    sideHit();
    x += 1.2*deltaX;
    y += 1.2*deltaY;
  }
}
