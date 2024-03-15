import 'dart:io';

void main(){
  int contlists = 1;
  int sumA = 0;
  int sumB = 0;
  while(contlists <= 2){
    print('Ingrese los 15 valores de la lista $contlists.');
    int cont = 0;
    if(contlists == 1){
      while(cont < 5){
        sumA += int.parse(stdin.readLineSync()!);
        cont++;
      }
    }else{
      while(cont < 5){
        sumB += int.parse(stdin.readLineSync()!);
        cont++;
      }
    }
    contlists++;
  }
  if(sumA > sumB){
    print('La lista 1 es mayor que la lista 2.\nLista 1: $sumA\nLista 2: $sumB');
  }else if(sumB > sumA){
    print('La lista 2 es mayor que la lista 1.\nLista 1: $sumA\nLista 2: $sumB');
  }else{
    print('Listas iguales.\nLista 1: $sumA\nLista 2: $sumB');
  }
}