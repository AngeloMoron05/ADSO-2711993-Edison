import 'dart:io';

void main(){
  print("Ingrese dos numeros enteros con mas de una unidad de diferencia.");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int men, may;

  if(a < b){
    men = a;
    may = b;
  }else{
    men = b;
    may = a;
  }
  int n = a;

  while(n >= men && n <= may){
    print('Ingrese un numero entre $men y $may');
    n = int.parse(stdin.readLineSync()!);
  }
}