import 'dart:io';

void main(){
  int pasw = 0;
  print("Ingrese la contraseña");
  while(pasw!=1234){
    pasw = int.parse(stdin.readLineSync()!);
    if(pasw!=1234){
      print("Contraseña incorrecta, intentelo de nuevo");
    }
  }
  print("Contraseña correcta, Bienvenido!");
}