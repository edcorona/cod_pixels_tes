int[] target = new int[3];
int popmax;
float mutationRate;
Population population;

void setup(){
  size(640,360);
  
  target[0] = 234;
  target[1] = 256;
  target[2] = 120;
  
  popmax = 150;
  mutationRate = 0.01;

  population = new Population(target,mutationRate,popmax);
}

void draw(){
  // Generate mating pool
  population.naturalSelection();
  //Create next generation
  population.generate();
  // Calculate fitness
  population.calcFitness();
  
  println(population.getBest());

  // If we found the target phrase, stop
  if (population.finished()) {
    println(millis()/1000.0);
    noLoop();
  }
}
