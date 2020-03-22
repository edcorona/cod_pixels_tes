PImage lips;
Individuo[] individuos= new Individuo[65536];
void setup()
{
  size(256,256);
  lips=loadImage("p1.png");
  for(int i=0; i<individuos.length;i++)
  {
    individuos[i]= new Individuo(color(0,0,0),color(0,0,0),color(0,0,0));
  }
}
void draw()
{
    for(int i=0; i<individuos.length;i++)
  {
  
    individuos[i].getcolor();
    println(pixels[1]);
  }
  
}
