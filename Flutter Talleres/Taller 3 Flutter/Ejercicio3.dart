import 'dart:io';

void main(){
  print("Ingrese el primer numero");
  var a = int.parse(stdin.readLineSync()!);
  print("Ingrese el segundo numero");
  var b = int.parse(stdin.readLineSync()!);
  
  var sum = a + b;
  var rest = a - b;
  var mult = a * b;

  print(a.toString()+" + "+b.toString()+" = "+sum.toString());
  print(a.toString()+" - "+b.toString()+" = "+rest.toString());
  print(a.toString()+" x "+b.toString()+" = "+mult.toString());
}