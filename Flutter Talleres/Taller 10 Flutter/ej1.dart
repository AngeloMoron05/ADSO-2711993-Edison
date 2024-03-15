import 'dart:io';

void main(){
  print("Ingrese el numero de piezas del lote a procesar.");
  int piez = int.parse(stdin.readLineSync()!);

  int cont = 1;
  int contApt = 0;
  print("");
  while(cont <= piez){
    print("Ingrese la longitud de la pieza.");
    double long = double.parse(stdin.readLineSync()!);
    if(long >= 1.20 && long <= 1.30){
      contApt++;
    }
    cont++;
  }
  print('Del lote $piez solo son aptas $contApt.');
}