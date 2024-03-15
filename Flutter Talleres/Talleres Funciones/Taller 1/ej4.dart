import 'dart:io';

void main(){
  print("Ingrese un numero para buscar una posicion especifica en el.");
  String num = stdin.readLineSync()!.toString();
  print("Ingrese la posicion del numero a extraer.");
  int pos = int.parse(stdin.readLineSync()!);
  
  if(buscarNumero(num, pos)=="null"){
    print("La posicion ingresada excede el tamaño del numero.");
  }else{
    print("El numero en la posicion ingresada es: "+buscarNumero(num, pos));
  }
}

String buscarNumero(String num, int pos){
  List<String> partes = num.split("");
  if(pos<=partes.length){
    return partes[pos-1];
  }else{
    return "null";
  }
}