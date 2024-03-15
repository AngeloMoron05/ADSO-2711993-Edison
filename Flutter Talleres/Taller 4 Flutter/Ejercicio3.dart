import 'dart:io';

void main(){
  print("Ingrese el numero donde inicie la secuencia");
  var x = int.parse(stdin.readLineSync()!);
  print("Ingrese el numero donde termine la secuencia");
  var y = int.parse(stdin.readLineSync()!);

  print("");
  for(var i=x; i<=y; i++){
    if(i%2 == 1){
      print(i.toString());
    }
  }
}