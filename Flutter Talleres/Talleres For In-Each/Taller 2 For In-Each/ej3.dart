import 'dart:io';

void main(){
  Map <String, double> frutas = {
    'Platano': 1.35,
    'Manzana': 0.80,
    'Pera': 0.85,
    'Naranja': 0.70
  };

  frutas.forEach((x,y)=>print(x));
  print("Ingrese la fruta que desea comprar: ");
  String fruta = stdin.readLineSync()!;
  print("Ingrese los kilos de la fruta a comprar: ");
  int kilos = int.parse(stdin.readLineSync()!);
  bool encontrada = false;
  frutas.forEach((x,y){
    if(x == fruta){
      encontrada = true;
      double precio = kilos * y;
      print("Precio de la compra es: $precio");
    }
  });
  if(!encontrada){
    print("La fruta no se encuentra entre las opciones.");
  }
}