import 'dart:io';

void main(){
  print("Ingrese el numero donde se empezara a calcular los cubos.");
  int n = int.parse(stdin.readLineSync()!);
  print("Ingrese el numero donde se terminara de calcular los cubos.");
  int m = int.parse(stdin.readLineSync()!);
  
  int cont = n;
  while(cont<=m){
    print('El cubo de $cont es igual a: '+calcularCubo(cont).toString());
    cont++;
  }
}

int calcularCubo(int cont){
  return cont*cont*cont;
}