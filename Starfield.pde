happiness[] bob;
xwing red5;
void setup() {
  size(500, 500);
  bob = new happiness[25];
  for (int i =0; i< bob.length; i++) {
    bob[i]= new NP();
  }
  bob[0]=new Oddball();
  bob[1]=new MumboJumbo();
  red5 = new xwing();
}

void draw()
{
  background(0);
  for (int i =0; i< bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
  red5.show();
}

class NP implements happiness {
  double myX, myY;
  double mySpeed, mySpeed2, myAngle;
  color myColor;
  NP() {
    mySpeed=(Math.random()*2)+3;  
    myX=width/2;
    myY=height/2;
    myAngle=Math.random()*Math.PI*2;
    myColor=(int)(Math.random()*255);
  }
  void move() {
    if (myX==width/2) {
      myAngle=Math.random()*Math.PI*2;
    }

    myX=(Math.cos(myAngle)*mySpeed)+myX;
    myY=(Math.sin(myAngle)*mySpeed)+myY;
  }
  void show() {
    fill(255);
    ellipse((int)myX, (int)myY, 5, 5);
    if (myX<0) {
      myX=width/2;
      myY=height/2;
    }
    if (myX>width) {
      myX=width/2;
      myY=height/2;
    }
    if (myY>height) {
      myX=width/2;
      myY=height/2;
    }
    if (myY<0) {
      myX=width/2;
      myY=height/2;
    }
  }
}

interface happiness
{
  public void show();
  public void move();
}
class Oddball implements happiness //uses an interface
{
  double oddX, oddY;
  double oddColor1, oddColor2, oddColor3;
  Oddball() {
    oddX=Math.random()*width;
    oddY=Math.random()*height;
    oddColor1=Math.random()*255;
    oddColor2=Math.random()*255;
    oddColor3=Math.random()*255;
  }
  void move() {
    oddX=((Math.random()*2)-1)+oddX;
    oddY=((Math.random()*2)-1)+oddY;
    oddColor1=Math.random()*255;
    oddColor2=Math.random()*255;
    oddColor3=Math.random()*255;

    if (oddX<0) {
      oddX=width/2;
      oddY=height/2;
    }
    if (oddX>width) {
      oddX=width/2;
      oddY=height/2;
    }
    if (oddY>height) {
      oddX=width/2;
      oddY=height/2;
    }
    if (oddY<0) {
      oddX=width/2;
      oddY=height/2;
    }
  }
  void show() {
    fill((int)oddColor1, (int)oddColor2, (int)oddColor3);
    rect((int)oddX, (int)oddY, 3, 3);
  }
}

class MumboJumbo extends NP
{
  public void show()
  {
    fill(255, 255, 255);
    ellipse((int)myX, (int)myY, 10, 10);
    noStroke();
    if (myX<0) {
      myX=width/2;
      myY=height/2;
    }
    if (myX>width) {
      myX=width/2;
      myY=height/2;
    }
    if (myY>height) {
      myX=width/2;
      myY=height/2;
    }
    if (myY<0) {
      myX=width/2;
      myY=height/2;
    }
  }
}
class xwing
{
  int redX1, redX2, redX3, redY1, redY2, redY3;
  xwing()
  {
    redX1=width/2;
    redX2=redX1+10;
    redX3=redX1-10;
    redY1=(height/2)+(height/3);
    redY2=redY1+30;
    
    
  }
  void show() {
   // if(redX2>redX3&&redY1<redY2){
    //redX3=redX3+1;
    //redX2=redX2-1;
    
    //}
    
    fill(0);
    stroke(255);
    triangle(redX1, redY1, redX2, redY2, redX3, redY2);
  }
  void shoot() {
  }
}
