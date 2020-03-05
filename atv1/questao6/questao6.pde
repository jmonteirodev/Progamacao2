int v1,v2,v3;
void  setup(){
  v1 = 1;
  v2 = 1;
  print(v1+", ");
  for(int i = 0; i < (int) random(20); i++){
    print(v2+", ");
    v3 = v1+v2;
    v1 = v2;
    v2 = v3;
  }
}
