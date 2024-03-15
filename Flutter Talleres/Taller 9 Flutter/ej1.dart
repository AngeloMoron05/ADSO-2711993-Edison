import 'dart:io';

void main(){
  print("Ingrese dos numeros diferentes para mostrar todos los numeros pares entre ellos.");
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

  print("");
  while(men <= may){
    if(men%2 == 0){
      print(men.toString());
    }
    men++;
  }
}
