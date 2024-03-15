import 'dart:io';


void main(i){
  Map <String,String> divisa = {'Euro':'€', 'Dolar':'\$', 'Yen':'¥'};

  bool encontrada = false;
  
  print("Elija una divisa: ");
  String moneda = stdin.readLineSync()!;

  divisa.forEach((key,value){
    if(moneda==key){
      encontrada=true;
      print("El símbolo de la divisa es: $value");
    }
  });

  if(encontrada==false){
    print("La divisa no está en el diccionario");
  }
}