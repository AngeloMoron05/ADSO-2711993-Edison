import "dart:io";

void main(){
  List<int> numeros = [];

  print("Ingrese los numeros ganadores de la loteria");
  for(int x in List.generate(5, (i) => i++)){
    int num = int.parse(stdin.readLineSync().toString());
    numeros.add(num);
  }

  numeros.sort();

  print("");
  numeros.forEach((x) => print(x));
}