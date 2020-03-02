String descricao;
int quantidade;
float precoUnitario, total, desconto, totalAPagar;

void setup(){
  quantidade = (int)random(1,100);
  precoUnitario = random(1,100);
  
  if(quantidade <= 5){
    desconto = 0.02;
  }else if(quantidade > 5 && quantidade <= 10){
    desconto = 0.03;
  }else{
    desconto = 0.05;
  }
  total = precoUnitario * quantidade;
  totalAPagar = total - (total * desconto);
  println("Quantidade: "+quantidade);
  println("Preço Unitário: "+precoUnitario);
  println("Total: "+total);
  println("Desconto: "+desconto*100+"%");
  print("Total a pagar: "+totalAPagar);
}
