Spaceship jim = new Spaceship();
Star[] pam = new Star[200];
Asteroid[] dwight = new Asteroid[100];
public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < pam.length; i++)
  {
    pam[i] = new Star();
  }
  for(int i = 0; i < dwight.length; i++)
  {
     dwight[i] = new Asteroid();
  }
}
public void draw() 
{
  for(int i = 0; i < pam.length; i++)
  {
    pam[i].show();
  }
  for(int i = 0; i < dwight.length; i++)
  {
     dwight[i].show();
     dwight[i]. move();
  }
  jim.show();
}
