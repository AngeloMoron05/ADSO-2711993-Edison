import 'dart:io';

void main(){
  print("Ingresa un numero entero para ralizar la secuencia de sumas hasta este");
  int n = int.parse(stdin.readLineSync()!);

  int cont = 0;
  int sum = 0;
  while(cont<=n){
    sum = cont + sum;
    cont++;
  }
  print(sum.toString());
}