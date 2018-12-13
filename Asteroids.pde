class Asteroid extends Floater
{
  public void setX(int x)
  {
    myCenterX = x;
  }
  public int getX()
  {
    return (int)myCenterX;
  }
  public void setY(int y)
  {
    myCenterY = y;
  }
  public int getY()
  {
    return (int)myCenterY;
  }
  public void setDirectionX(double x)
  {
    myDirectionX = x;
  }
  public double getDirectionX()
  {
    return (double)myDirectionX;
  }
  public void setDirectionY(double y)
  {
    myDirectionY = y;
  }
  public double getDirectionY()
  {
    return myDirectionY;
  }
  public void setPointDirection(int degrees)
  {
    myPointDirection = degrees;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
  protected int rotSpeed;
  public Asteroid() {
     int i = 0;
    for(double angle = 0; angle < Math.PI*2; angle+=Math.PI/3){
      xCorners[i] = (int)(Math.random()*5*Math.cos(angle));
      yCorners[i] = (int)(Math.random()*5*Math.sin(angle));
    }
    myCenterX = myCenterY = 250;
    myDirectionX = myDirectionY = 0;
    myColor = color(196, 184, 184);
    
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    
  }
  public void move() {
    turn(rotSpeed);
    super.move();
      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
   
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    } 
  }
}
