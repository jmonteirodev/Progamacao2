int[][] matriz = new int[5][5];
void setup(){
  matriz = matrizAleatoria();
  procedimento(matriz, (int)random(0, matriz.length),(int)random(0,matriz.length));
}

int[][] matrizAleatoria(){
  int[][] matriz = new int[5][5];
  for(int i = 0; i < matriz.length; i++){
    for(int j = 0; j < matriz[i].length; j++){
      matriz[i][j] = (int) random(100);
    }
  }
  return matriz;
}
void procedimento(int[][] matriz, int posicaoI, int posicaoJ){
  for(int i = 0; i < matriz.length; i++){
        for(int j = 0; j < matriz[i].length; j++){
          if(matriz[i][j] < 10)
            print('0');
          print(matriz[i][j],"");
      }
      println();
    }
    println("Na posição i = "+posicaoI+" e j na posicao "+posicaoJ+" há o valor "+matriz[posicaoI][posicaoJ]);
    println("Acima");
  for(int y = posicaoI-1; y >= 0; y--){
      println(matriz[y][posicaoJ],"");
  }
  println();
  println("Abaixo");
  for(int y = posicaoI+1; y < matriz[posicaoI].length; y++){
      println(matriz[y][posicaoJ],"");
  }
  println();
  println("Do lado direito");
  for(int y = posicaoJ+1; y < matriz[posicaoI].length; y++){
      println(matriz[posicaoI][y],"");
  }
  println();
  println("Do lado esquerdo");
  for(int y = posicaoJ-1; y >= 0; y--){
      println(matriz[posicaoI][y],"");
  }
}
