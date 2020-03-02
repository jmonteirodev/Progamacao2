void setup(){
  println(repeticoes("ANA", "ANA E MARIANA GOSTAM DE BANANA"));
}
int repeticoes(String palavra, String frase){
  int contador = 0;
  int index = 0;
  do{
    index = frase.indexOf(palavra, index);
    if(index != -1){
      contador++;
      index++;
    }
  }while(index != -1);
    
  return contador;
}
