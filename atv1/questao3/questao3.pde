char v1, v2;
void setup(){
  v1 = geraValor();
  v2 = geraValor();
  jogo(v1,v2);
}
void jogo(char jogador1, char jogador2){
  int vencedor = 0;
  if((jogador1 == 'a'&& jogador2 == 'b') || (jogador1 == 'b' && jogador2 == 'c') || (jogador1 == 'c' && jogador2 == 'a'))
    vencedor = 1;
  else if((jogador2 == 'a'&& jogador1 == 'b') || (jogador2 == 'b' && jogador1 == 'c') || (jogador2 == 'c' && jogador1 == 'a'))
    vencedor = 2;
  else if(jogador1 == jogador2)
    vencedor = 0;

  println("Escolha do jogador 1: "+valorJogado(jogador1));
  println("Escolha do jogador 2: "+valorJogado(jogador2));
  if(vencedor == 0)
    println("Empate");
  else
    println("O vencedor foi o jogador "+vencedor);

}

char geraValor(){
  int valor = (int) random(1,4);
  if(valor == 1)
    return 'a';
  else if(valor == 2)
    return 'b';
  else
    return 'c';
}

String valorJogado(char valor){
  if(valor == 'a')
    return "pedra";
  else if(valor == 'b')
    return "tesoura";
  else if(valor == 'c')
    return "papel";
  else
    return null;
}
