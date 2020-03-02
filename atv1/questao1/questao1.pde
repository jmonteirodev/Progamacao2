float v1, v2, v3, v4;
void setup(){
  v1 = random(10);
  v2 = random(10);
  v3 = random(10);
  v4 = random(-10,10);
  println("Media de "+v1+" e "+v2+": "+media(v1,v2));
  println("A área do circulo de raio "+v3+": "+calculaArea(v3));
  if(isPositive(v4) == 1)
    println("O valor "+v4+" é positivo!");
   else
    println("O valor "+v4+" é negativo!");
}

float media(float n1, float n2){
  return (n1+n2)/2;
}

float calculaArea(float raio){
  return 3.14*(raio*raio);
}

int isPositive(float number){
  if(number >= 0){
    return 1;
  }else{
    return -1;
  }
}
