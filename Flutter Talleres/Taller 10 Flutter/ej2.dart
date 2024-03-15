import 'dart:io';

void main(){
  print("Ingrese el numero de estudiantes.");
  int est = int.parse(stdin.readLineSync()!);

  int cont = 1;
  int contApr = 0;
  print("");
  while(cont <= est){
    print("Ingrese la nota del estudiante.");
    double nota = double.parse(stdin.readLineSync()!);
    if(nota >= 7){
      contApr++;
    }
    cont++;
  }
  print('De $est estudiantes, $contApr tienen nota mayor a 7.');
}