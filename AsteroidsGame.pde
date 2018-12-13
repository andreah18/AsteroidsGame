Spaceship jim = new Spaceship();
Star[] pam = new Star[200];
Asteroid[] dwight = new Asteroid[80];
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
  background(0);
  for(int i = 0; i < pam.length; i++)
  {
    pam[i].show();
  }
  for(int i = 0; i < dwight.length; i++)
  {
     dwight[i].show();
     dwight[i]. move();
     //float d = dist(jim.getX(), jim.getY(), dwight.get(i).getX(), dwight.get(i).getY());
     //if (d < 10)
     //dwight.remove(i);
  }
  jim.show();
}
