Dice bob;
int t = 0;
void setup()
{
  size(500, 300);
  background(66,135,245);
  textAlign(CENTER, CENTER);
  noLoop();
  bob = new Dice(50, 150);
 
}
void draw()
{
  
  t = 0;
  for(int i = 10;i <= 475;i+=55){
    bob = new Dice(i, 150);
    //int l = bob.roll();
    bob.roll();
    bob.show();
    t += l;
  }
  text(t,250,250);
 
}
void mousePressed()
{
  redraw();
}
class Dice
{
  //three member variables
  int myX, myY,roll;

  //three member functions
  Dice(int x, int y) //constructor
  {
    //job of the constructor
    // is to intialize member varaibles
    roll = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  public int roll()
  {
    roll = (int)(Math.random()*6)+1;
    return roll;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    //text(roll, myX-25, myY+25);
    if(roll == 1){
    ellipse(myX+25,myY+25,5,5);
    }
    if(roll == 2){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+40,myY+40,5,5);
    }
    if(roll == 3){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+40,myY+40,5,5);
    ellipse(myX+25,myY+25,5,5);
    }
    if(roll == 4){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+10,myY+40,5,5);
    ellipse(myX+40,myY+10,5,5);
    ellipse(myX+40,myY+40,5,5);
    }
    if(roll == 5){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+10,myY+40,5,5);
    ellipse(myX+40,myY+10,5,5);
    ellipse(myX+40,myY+40,5,5);
    ellipse(myX+25,myY+25,5,5);
    }
    if(roll == 6){
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+10,myY+40,5,5);
    ellipse(myX+40,myY+10,5,5);
    ellipse(myX+40,myY+40,5,5);
    ellipse(myX+40,myY+25,5,5);
    ellipse(myX+10,myY+25,5,5);
    }
  }
}
