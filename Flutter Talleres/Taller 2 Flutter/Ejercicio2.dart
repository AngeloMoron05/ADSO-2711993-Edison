import 'dart:io';

void main(){
  print("Ingrese el valor de la compra");
  var val = int.parse(stdin.readLineSync()!);
  print("Ingrese el porcentaje del descuento");
  var des = int.parse(stdin.readLineSync()!);
 
  var total = val * des/100;
  print("El precio final es: "+total.toString());
}