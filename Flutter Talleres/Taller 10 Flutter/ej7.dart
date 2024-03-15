import 'dart:io';

void main(){
  print("Ingrese la cantidad de numeros decimales.");
  int cant = int.parse(stdin.readLineSync()!);

  int cont = 0;
  double sum = 0;
  print("");
  while(cont < cant){
    print("Ingrese el numero.");
    sum += double.parse(stdin.readLineSync()!);
    cont++;
  }
  print('El promedio de los numero decimales ingresados es de: ${sum/cant}');
}