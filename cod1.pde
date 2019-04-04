PImage pop;
void setup()
{
size(256,256);
pop=loadImage("p1.png");

}
void draw()
{
//image(pop,0,0);
loadPixels();
pop.loadPixels();
  for(int x=0;x<width;x++)
  {
      for(int y=0; y<height; y++)
      {
      int loc=x+y*width;
      float r=red(pop.pixels[loc]);
      float g=green(pop.pixels[loc]);
      float b=blue(pop.pixels[loc]);
      pixels[loc]=color(r,g,b);
      
      }  
  }
  
  updatePixels();
}
