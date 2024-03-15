import 'dart:io';

void main(){
  print("Ingrese la hora de entrada");
  var hent = double.parse(stdin.readLineSync()!);
  print("Ingrese la hora de salida");
  var hsal = double.parse(stdin.readLineSync()!);

  if(hent > 24 || hsal > 24){
    print("Error en horas ingresadas");
  }else{
    var horas = hsal - hent;
    if(horas<=1){
      print("La tarifa es de 1000 pesos.");
    }else{
      var tarifa = ((horas - 1)*600)+1000;
      print("La tarifa es de: "+tarifa.toString()+" pesos.");
    }
  }
}