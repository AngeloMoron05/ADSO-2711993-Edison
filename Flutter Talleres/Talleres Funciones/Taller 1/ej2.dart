import 'dart:io';

void main(){
  print("Ingrese un numero para calcular la suma de los numeros impares hasta este.");
  int num = int.parse(stdin.readLineSync()!);
  
  sumaImpares(num);
}

void sumaImpares(int num){
  int tot = 0;
  int cont = 0;
  for(int i=0; cont!=num; i++){
    if(i%2!=0){
      tot = tot + i;
      cont++;
    }
  }
  print("La suma de los primeros numeros impares es de: $tot");
}