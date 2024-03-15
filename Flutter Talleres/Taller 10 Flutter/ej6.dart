void main(){
  String cadena = "";

  int cont = 0;
  print("");
  while(cont <= 500){
    if(cont%8 == 0){
      cadena += cont.toString()+" - ";
    }
    cont++;
  }
  print(cadena);
}