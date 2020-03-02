float[] vetor = new float[5];
float maior;
int posicaoMaior;
float menor;
int posicaoMenor;
void setup(){
  for(int i = 0; i < vetor.length; i++){
    vetor[i] = random(100);
  }
  
  for(int i = 0; i < vetor.length; i++){
    print(vetor[i]+" ");
  }
  maior = vetor[0];
  posicaoMaior = 0;
  for(int i = 1; i < vetor.length; i++){
    if(maior < vetor[i]){
      maior = vetor[i];
      posicaoMaior = i;
    }
  }
  menor = vetor[0];
  posicaoMenor = 0;
  for(int i = 1; i < vetor.length; i++){
    if(menor > vetor[i]){
      menor = vetor[i];
      posicaoMenor = i;
    }
  }
  println();
  println("A média é: "+media(vetor));
  println("O maior valor é: "+maior);
  println("O maior valor está na posição: "+posicaoMaior);
  println("O menor valor é: "+menor);
  println("O menor valor está na posição: "+posicaoMenor);

}

float media(float[] valores){
  float soma = 0;
  for(int i = 0; i < valores.length; i++){
    soma += valores[i];
  }
  return soma/valores.length;
}
