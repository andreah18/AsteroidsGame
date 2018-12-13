class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(255);
    ellipse(myX, myY, 3, 3);
  }
  public void move()
  {
    myY = myY + (int)(Math.random()*3)+1;
    myX = myX + (int)(Math.random()*3)+1;
  }
}
