import 'dart:io';

void main(){
  int a = -1;
  int b = -1;
  while(a != 0 && b != 0){
    print("Ingrese el valor de a");
    a = int.parse(stdin.readLineSync()!);
    print("Ingrese el valor de b");
    b = int.parse(stdin.readLineSync()!);

    print("El resultado de la suma es: ${a + b}");
    print("");
  }
}