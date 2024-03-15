import 'dart:io';
import 'dart:math';

void main(){
  var random = new Random();
  bool conf = true;

  int a = random.nextInt(100);
  int b = random.nextInt(100);
  int result = a + b;

  print('¿Cuanto es la suma de $a + $b?');

  while(conf){
    int resp = int.parse(stdin.readLineSync()!);

    if(resp == result){
      print("Respuesta CORRECTA.");
      conf = false;
      break;
    }else{
      print("Respuesta INCORRECTA, intentelo de nuevo.");
    }
  }
}