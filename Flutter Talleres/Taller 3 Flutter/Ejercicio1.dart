import 'dart:io';

void main(){
  print("Ingrese la distancia en millas marinas");
  var millas = int.parse(stdin.readLineSync()!);
  
  var metros = millas * 1852;
  print("La distancia ingresada equivale a "+metros.toString()+" metros.");
}