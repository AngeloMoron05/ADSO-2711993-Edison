import 'dart:io';
import 'dart:math';

void main(){
  Random random = Random();

  int a = random.nextInt(100);
  int b = random.nextInt(100);

  int sum = 0;
  print('¿Cual es el resultado de la suma de $a + $b?');
  while(sum!=(a+b)){
    sum = int.parse(stdin.readLineSync()!);
    if(sum!=(a+b)){
      print("Respuesta incorrecta, intentalo de nuevo");
    }
  }
  print("Respuesta correcta");
}