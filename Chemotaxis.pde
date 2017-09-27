ArrayList <BacteriaCollection> allBacteria = new ArrayList <BacteriaCollection>();
void setup()   
{     
  size(300,300);
}   
void draw()   
{    
  background(0);
  for (int i=0;i<allBacteria.size();i++)
  for (int ii=0;ii<500;ii++)
  allBacteria.get(i).bCollection[ii].show(); 
}

void mouseClicked()
{
  allBacteria.add(new BacteriaCollection(mouseX,mouseY));
}
  
  
class Bacteria    
{     
  int myX, myY;
  int[] myColor;
  Bacteria(int x, int y)
  {
    myX = x;
    myY = y;
    myColor = new int[]{(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)};
  }
  void show()
  {
    noStroke();
    fill(myColor[0],myColor[1],myColor[2]);
    ellipse(myX,myY,3,3);
    myX += (int)(Math.random()*3)-1;
    myY += (int)(Math.random()*3)-1;
  }
}    

class BacteriaCollection
{
  Bacteria[] bCollection;
  BacteriaCollection(int x,int y)
  {
    bCollection = new Bacteria[500];
    for (int i=0;i<500;i++)
      bCollection[i] = new Bacteria(x,y);
  }
}