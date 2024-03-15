import 'dart:io';

void main(){
  print("Ingresa un numero entero para iniciar la secuencia de sumas en este");
  int a = int.parse(stdin.readLineSync()!);
  print("Ingresa un numero entero para finalizar la secuencia de sumas hasta este");
  int b = int.parse(stdin.readLineSync()!);

  int cont = 0;
  int sum = 0;
  if(b>a){
    cont = a;
    while(cont<=b){
      sum = cont + sum;
      cont++;
    }
  }else{
    cont = b;
    while(cont<=a){
      sum = cont + sum;
      cont++;
    }
  }
  print(sum.toString());
}