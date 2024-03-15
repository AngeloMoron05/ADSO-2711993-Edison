import 'dart:io';

void main(){
  print("Ingrese la cantidad de puntos optenidos");
  int puntos = int.parse(stdin.readLineSync()!);
  int bono = 0;

  if(puntos < 20){
    print('El numero de puntos es: $puntos\nSu nivel es INACEPTABLE\nTIENE LLAMADO DE ATENCION');
    bono = puntos*200000;
    print('Su bono es: $bono');
  }else if(puntos < 40){
    print('El numero de puntos es: $puntos\nSu nivel es REGULAR');
    bono = puntos*200000;
    print('Su bono es: $bono');
  }else if(puntos < 60){
    print('El numero de puntos es: $puntos\nSu nivel es ACEPTABLE');
    bono = puntos*200000;
    print('Su bono es: $bono');
  }else{
    print('El numero de puntos es: $puntos\nSu nivel es EXCELENTE');
    bono = puntos*200000;
    print('Su bono es: $bono');
  }
}