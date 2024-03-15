import 'dart:io';

void main(){
  print("Ingresa el capital para averiguar en cuantos meses se duplicara con un interes de 5% mensual");
  double cap = double.parse(stdin.readLineSync()!);

  double meses = 0;
  double dobl = cap * 2;
  double ints = 0;
  double din = cap;
  while(din<dobl){
    ints = din * 5/100;
    din = din + ints;
    meses++;
  }
  print("El dinero se habra duplicado en: "+meses.toString()+" meses");
}