import 'dart:io';

void main(){
  Map <String, dynamic> persona = {};
  bool continuar = true;
  while(continuar==true){
    print("Ingresa un dato a añadir: ");
    String dato = stdin.readLineSync()!;
    print("Ingresa su valor: ");
    dynamic valor = stdin.readLineSync()!;
    persona[dato] = valor;
    print('Datos Añadidos:');
    persona.forEach((data,value)=> print('$data: $value'));
    print("Ingrese 1 para continuar o 0 para salir.");
    int resp = int.parse(stdin.readLineSync()!);
    if(resp==0){
      continuar = false;
    }
  }
}