import 'dart:io';

void main(){
  print("Ingrese la nota del primer taller");
  double tall1 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota del segundo taller");
  double tall2 = double.parse(stdin.readLineSync()!);
  print("Ingrese la nota del examen final");
  double exam = double.parse(stdin.readLineSync()!);

  double defN = (((tall1/5*30)+(tall2/5*30)+(exam/5*40))*15/100)/3;
  print("La nota definitiva es de: "+defN.toString());
}