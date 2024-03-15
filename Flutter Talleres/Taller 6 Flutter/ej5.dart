import 'dart:io';

void main(){
  print("Ingrese el numero de horas trabajadas");
  double horas = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor por hora");
  double vh = double.parse(stdin.readLineSync()!);

  if(horas>=40){
    double sueldo = (40*vh)+((horas-40)*(vh*2));
    print("El sueldo a cobrar es de: "+sueldo.toString());
  }else{
    double sueldo = horas * vh;
    print("El sueldo a cobrar es de: "+sueldo.toString());
  }
}