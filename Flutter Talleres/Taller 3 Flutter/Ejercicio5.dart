import 'dart:io';

void main(){
  print("Ingrese las horas trabajadas.");
  var ht = int.parse(stdin.readLineSync()!);
  print("Ingrese el valor por hora.");
  var vh = int.parse(stdin.readLineSync()!);
  
  var sal = ht * vh;

  print("El salario es de: "+sal.toString());
}