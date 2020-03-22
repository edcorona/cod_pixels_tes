class Individuo
{
   int r;
   int g;
   int b;
   Individuo(int _r,int _g, int _b)
   {
     r=_r;
     g=_g;
     b=_b;
   }
   void getcolor()
   {
     loadPixels();
  lips.loadPixels();
  for(int x=0;x<width;x++)
  {
    for(int y=0;y<height; y++)
    {
      int loc=x+y*width;
      float r=red(lips.pixels[loc]);
      float g=green(lips.pixels[loc]);
      float b=blue(lips.pixels[loc]);
      pixels[loc]=color(r,g,b);
    }
  }
  updatePixels();
   
   }





}
