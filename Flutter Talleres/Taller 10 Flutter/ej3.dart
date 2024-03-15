import 'dart:io';

void main(){
  print("Ingrese el numero de personas.");
  int per = int.parse(stdin.readLineSync()!);

  int cont = 1;
  double sum = 0;
  print("");
  while(cont <= per){
    print("Ingrese el peso de la persona.");
    double pes = double.parse(stdin.readLineSync()!);
    sum += pes;
    cont++;
  }
  print('El promedio de peso de las $per personas es de: ${sum/per}');
}