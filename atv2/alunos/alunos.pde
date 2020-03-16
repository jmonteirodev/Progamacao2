class Aluno{
  int matricula;
  String nome;
  float notaProva1;
  float notaProva2;
  float notaTrabalho;
  Aluno(int matricula, String nome, float notaProva1, float notaProva2, float notaTrabalho){
    this.matricula = matricula;
    this.nome = nome;
    this.notaProva1 = notaProva1;
    this.notaProva2 = notaProva2;
    this.notaTrabalho = notaTrabalho;
  }
  float media(){
    float media = (2.5*notaProva1)+(2.5*notaProva2)+(2*notaTrabalho);
    return media/7;
  }
  float calculaFinal(){
    float media = media();
    if(media >= 7){
      return 0;
    }else{
      return 7-media;
    }
  }
}
Aluno aluno1 = new Aluno(1,"Jonathan", 10,9,9);
Aluno aluno2 = new Aluno(2,"Junior", 4,10,10);
Aluno aluno3 = new Aluno(3,"Tiago", 2,5,4);
Aluno aluno4 = new Aluno(4,"Grazielly", 5,3,10);
Aluno[] alunos = {aluno1,aluno2,aluno3,aluno4};
void setup(){
  for(int i = 0; i < alunos.length; i++){
  }
  for(Aluno aluno : alunos){
    println("O aluno "+aluno.nome+" tem média "+aluno.media()+" e precisa de "+aluno.calculaFinal());
  }
}
