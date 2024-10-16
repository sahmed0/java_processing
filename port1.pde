Arrow one, two, three;

void setup() 
{
 
  size(500,500);
  one = new Arrow(10,10,1,1);
  two = new Arrow(100,10,-1,1);
  three = new Arrow(10, 250,-1,-1);
}

void draw() 
{
  background(255);
  one.run();
  one.collide(two);
  one.collide(three);
  
  two.run();
  two.collide(one);
  two.collide(three);
 
  three.run();
  three.collide(one);
  three.collide(two);
}
