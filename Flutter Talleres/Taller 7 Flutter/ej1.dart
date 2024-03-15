import 'dart:io';

void main(){
  print("Ingrese la edad.");
  int edad = int.parse(stdin.readLineSync()!);
  print("Ingrese el sueldo mensual.");
  double sueldo = double.parse(stdin.readLineSync()!);
  double smmlv = 1300000;
  double rent = 0;

  if(edad > 30 && sueldo > (smmlv*2)){
    rent = (sueldo*12)*(20/100);
    print('la Renta a pagar es de $rent');
      
  }else if(edad > 50 && sueldo > (smmlv*2) ){
    rent = (sueldo*12)*(10/100);
    print('la Renta a pagar es de $rent');
  }else{
    print("No debe pagar renta");
  }
}