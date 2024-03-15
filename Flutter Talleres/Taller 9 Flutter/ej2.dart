import 'dart:io';

void main(){
  bool conf = false;
  while(conf == false){
    print("\nIngrese la contraseña");
    String pass = (stdin.readLineSync()!).toString();

    if(pass == "1234"){
      print("Bienvenido!");
      conf = true;
    }else{
      print("Contraseña incorrecta, intentelo de nuevo.");
    }
  }
}