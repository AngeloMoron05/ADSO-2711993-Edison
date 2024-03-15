import 'dart:io';

void main(){
  bool conf = true;
  while(conf){
    print("\nIngrese el valor A");
    int a = int.parse((stdin.readLineSync()!).toString());
    print("Ingrese el valor B");
    int b = int.parse((stdin.readLineSync()!).toString());

    if(a == 0 && b == 0){
      conf = false;
      break;
    }else{
      print('$a + $b = ${a+b}');
    }
  }
}