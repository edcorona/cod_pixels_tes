class Individuo
{
  int r;
  int g;
  int b;
  //PImage imagen;
  Individuo(int _r, int _g, int _b)
  {
    r=_r;
    g=_g;
    b=_b;
    //imagen= loadImage("p1.png");
  }
  /*void getcolor()
  {
    r=random(color());
  }*/
  void getcolor()
  {
    if(r<100)
    {
      r=0;
    }
    else
    {
      r=255;
    }
    if(g<100)
    {
      g=0;
    }
    else
    {
      g=255;
    }
    if(b<100)
    {
      b=0;
    }
    else
    {
      b=255;
    }
  }
  



}
