import 'dart:io';

void main(){
  print("Ingrese el numero hasta donde llegara la serie Fibonacci.");
  int n = int.parse(stdin.readLineSync()!);

  int temp = 0;
  int a = 0;
  int b = 1;
  print("");
  while(temp <= n){
    if(n == 0){
      print("0");
      break;
    }else if(n == 1){
      print("0");
      print("1");
      break;
    }
    if(temp == 0){
      print("0");
      print("1");
    }
    temp = a + b;
    a = b;
    b = temp;
    if(temp > n){
      break;
    }
    print(temp.toString());
  }
}