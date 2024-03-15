import 'dart:io';

void main(){
  print("Ingrese un numero para determinar si es positivo o negativo y par o impar.");
  int num = int.parse(stdin.readLineSync()!);
  
  print("El numero es: "+determinarSigno(num)+" y "+determinarParImpar(num));
}

String determinarSigno(int num){
  if(num==0){
    return "NEUTRO";
  }else if(num>0){
    return "POSITIVO";
  }else{
    return "NEGATIVO";
  }
}

String determinarParImpar(int num){
  if(num%2!=0){
    return "IMPAR";
  }else{
    return "PAR";
  }
}