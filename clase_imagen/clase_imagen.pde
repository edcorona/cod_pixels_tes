PImage imagen;
void setup()
{
size(256,256);
imagen=loadImage("p1.png");
int dimension= imagen.width* imagen.height;
imagen.loadPixels();
for(int i=0;i<dimension;i+=10)
  {
  imagen.pixels[i]=color(0,0,0);
  }
  imagen.updatePixels();


}
void draw()
{
  image(imagen,0,0);

}
