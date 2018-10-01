Die model;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  background(0, 0, 0);
  int sum = 0;
  for (int myY = 25; myY <=400; myY += 155)
  {
    for (int myX = 10; myX <=500; myX += 160)
    {
      model = new Die (myX, myY);
      model.show();
      model.roll();
      sum = sum + model.dot;
    }
  }      
  textAlign(CENTER);
  textSize(24);
  text("You rolled a: " + sum + " !", 300, 550);
}

void mousePressed()
{
  redraw();
}

class Die 
{
  int myX, myY, dot;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    dot = (int)(Math.random()*6+1);  
  }
 
  void roll()
  {
    noStroke();
    if (dot == 1)
    {
      fill(255, 188, 0);
      ellipse(myX+50, myY+50, 30, 30);
    }
    fill(255, 255, 255);
    
    if (dot == 2)
    {
      fill(255, 188, 0);
      ellipse(myX+20, myY+50, 20, 20);
      ellipse(myX+80, myY+50, 20, 20);   
    }
    fill(255, 255, 255);

    if (dot == 3)
    {
      fill(255, 188, 0);
      ellipse(myX+20, myY+50, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
      ellipse(myX+80, myY+50, 20, 20);     
    }
    fill(255, 255, 255);

    if (dot == 4)
    {
      fill(255, 188, 0);
      ellipse(myX+30, myY+30, 20, 20);
      ellipse(myX+30, myY+70, 20, 20);
      ellipse(myX+70, myY+30, 20, 20);
      ellipse(myX+70, myY+70, 20, 20);     
    }
    fill(255, 255, 255);

    if (dot == 5)
    {
      fill(255, 188, 0);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);      
    }
    fill(255, 255, 255);

    if (dot == 6)
    { 
      fill(255, 188, 0);
      ellipse(myX+30, myY+20, 20, 20);
      ellipse(myX+30, myY+50, 20, 20);
      ellipse(myX+30, myY+80, 20, 20);
      ellipse(myX+70, myY+20, 20, 20);
      ellipse(myX+70, myY+50, 20, 20);
      ellipse(myX+70, myY+80, 20, 20);
    }
    fill (255, 255, 255);
  }

  void show()
  {
    rect(myX, myY, 100, 100, 40);
  }
}