int[][] vetor = new int[5][5];
void setup(){
  vetor = matrizAleatoria();
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
