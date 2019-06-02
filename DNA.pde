class DNA{
  
  int[] genes;
  
  float fitness;
  
  DNA(int num){
    genes = new int[num];
    for(int i =0; i < genes.length; i++){
      genes[i] = (int) random(0,256);
    }
  }
  
  int[] getPhrase(){
    return genes;
  }
  
  void fitness(int[] target){
    int score = 0;
    for (int i= 0; i < genes.length; i++){
      if(genes[i]==target[i]){
        score++;
      }
    }
    
    fitness = (int)score/ (float)target.length;
    
  }
  
  DNA crossover(DNA partner, DNA partner2) {
    DNA child = new DNA(genes.length);
    
    int midpoint = int(random(genes.length));
    
    for(int i = 0; i < genes.length; i++){
      if(i > midpoint){
        child.genes[i] = partner.genes[i];
      }else{
        child.genes[i] = partner2.genes[i];
      }
    }
    
    return child;
  }
  
  void mutate(float mutationRate){
    for(int i = 0; i< genes.length;i++){
      if(random(1)< mutationRate){
        genes[i] = (int) random(0,256);
      }
    }
  }

}
