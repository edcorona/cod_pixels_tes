Individuo [] individuos= new Individuo[65536];
PImage imagen;
void setup()
{
size(256,256);
imagen= loadImage("p1.png");
for(int i=0;i<individuos.length;i++)
  {
    individuos[i]= new Individuo(int(random(0,255)),int(random(0,255)), int(random(0,255)));
  }
}
void draw()
{
  color amarillo = color(255, 255, 0);
  color rojo=color(255,0,0);
loadPixels();
/*
for (int i = 0; i < 30000; i++) {
              for (int j = 0; j < 60000; j++) {
                pixels[i]=amarillo;
                pixels[j]=rojo;
              }
}
*/

for (int i = 0; i < individuos.length ; i++) {
  individuos[i].getcolor();
  imagen.pixels[i] = color(individuos[i].r, individuos[i].g, individuos[i].b ); 
}

imagen.updatePixels();
image(imagen,0,0);
}
