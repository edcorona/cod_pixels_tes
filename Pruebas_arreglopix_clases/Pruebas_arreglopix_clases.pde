Individuo [] individuos= new Individuo[90000];
color R=color(0,0,255);
 color G=color(255,255,255);
color B=color(255,255,255);
void setup()
{
size(300,300);
for(int i=0;i<individuos.length;i++)
  {
    individuos[i]= new Individuo(R,G,B);
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

for (int i = 0; i < individuos.length/2 ; i++) {
  pixels[i] = amarillo; 
}

updatePixels();
}
