class Population{
  float mutationRate;
  DNA[] population;
  ArrayList <DNA> matingPool;
  int[] target;
  int generations;
  boolean finished;
  int perfectScore;
  
  Population(int[]p,float m,int num){
    target = p;
    mutationRate = m;
    population = new DNA[num];
    for(int i = 0; i < population.length;i++){
      population[i] = new DNA(target.length);
    }
    calcFitness();
    matingPool = new ArrayList<DNA>();
    finished = false;
    generations = 0;
    
    perfectScore = 1;
  }
  
  void calcFitness(){
    for(int i = 0; i < population.length;i++){
      population[i].fitness(target);
    }
  }
  
  void naturalSelection(){
    matingPool.clear();
    
    float maxFitness = 0;
    for(int i = 0; i < population.length; i++){
      if (population[i].fitness > maxFitness) {
        maxFitness = population[i].fitness;
      }
    }
    
    for (int i = 0; i < population.length; i++) {  
      float fitness = map(population[i].fitness,0,maxFitness,0,1);
      int n = int(fitness * 100);  // Arbitrary multiplier, we can also use monte carlo method
      for (int j = 0; j < n; j++) {              // and pick two random numbers
        matingPool.add(population[i]);
      }
    }
  }
  
  void generate() {
    // Refill the population with children from the mating pool
    for (int i = 0; i < population.length; i++) {
      int a = int(random(matingPool.size()));
      int b = int(random(matingPool.size()));
      int c=matingPool.size()-1;
      DNA partnerA = matingPool.get(a);
      DNA partnerB = matingPool.get(b);
      DNA partnerC= matingPool.get(c);
      DNA child = partnerA.crossover(partnerB, partnerC);
      child.mutate(mutationRate);
      population[i] = child;
    }
    generations++;
  }
  
  int[] getBest(){
    float worldrecord = 0.0;
    int index = 0;
    for (int i = 0; i < population.length; i++) {
      if (population[i].fitness > worldrecord) {
        index = i;
        worldrecord = population[i].fitness;
      }
    }
    
    if (worldrecord == perfectScore ) finished = true;
    return population[index].getPhrase();
  }
  
  int[] getWorst(){
    float worstrecord = 1.0;
    int index = 0;
    for (int i = 0; i < population.length; i++) {
      if (population[i].fitness < worstrecord) {
        index = i;
        worstrecord = population[i].fitness;
      }
    }
    return population[index].getPhrase();
  }
  
  boolean finished() {
    return finished;
  }

  int getGenerations() {
    return generations;
  }

  // Compute average fitness for the population
  float getAverageFitness() {
    float total = 0;
    for (int i = 0; i < population.length; i++) {
      total += population[i].fitness;
    }
    return total / (population.length);
  }
  
  
  
}
