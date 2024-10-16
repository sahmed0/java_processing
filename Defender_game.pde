PImage background;
int bgX=0; //global variable background location

Alien yeehaw, howdy, giddyup; //create memory of aliens
Defender def; //create memory of defenders

  void setup()
  {
   size(800,400);
   background = loadImage("spaceBackground.jpg");
   background.resize(width,height);
   
   yeehaw = new Alien(650,100,4);
   howdy = new Alien(650,200,4);
   giddyup = new Alien(650,300,4);
   def = new Defender(100,200,8);
  }
  
  
  void draw ()
  {
    if(def.crash() == false)
    {
      drawbackground();
      yeehaw.run();
      howdy.run();
      giddyup.run();
      def.run();
    }
    else
    exit();
  }
  
  void drawbackground()
  {
     image(background, bgX, 0); //draw background twice adjacent
     image(background, bgX+background.width, 0);
     bgX -= 4;
     if(bgX== -background.width)
     bgX = 0; //wrap background
  }
  
  void keyPressed()
  {
     if(keyCode == UP && def.y>=15)
     {
       def.y -= 8;
     }
     if(keyCode == DOWN && def.y<=height-25)
     {
       def.y += 8;
     }
     if(keyCode == RIGHT && def.x<width-65)
     {
       def.x += 8;
     }
     if(keyCode == LEFT && def.x>5)
     {
       def.x -= 8;
     }
  }
