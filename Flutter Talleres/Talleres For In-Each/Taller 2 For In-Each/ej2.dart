import 'dart:io';

void main(){
  Map<String,dynamic> persona={};

  print("Ingrese su nombre:");
  persona['nombre']=stdin.readLineSync()!;

  print("Ingrese su edad:");
  persona['edad']=int.parse(stdin.readLineSync()!);

  print("Ingrese su dirección:");
  persona['direccion']=stdin.readLineSync()!;

  print("Ingrese su número de teléfono:");
  persona['telefono']=int.parse(stdin.readLineSync()!);

  print('${persona['nombre']} tiene ${persona['edad']} años, vive en ${persona['direccion']} y su número de teléfono es ${persona['telefono']}.');
}