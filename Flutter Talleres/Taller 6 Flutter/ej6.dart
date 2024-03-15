import 'dart:io';

void main(){
  int intentos = 3;
  while(intentos != 0){
    print("Ingrese el usuario");
    String user = (stdin.readLineSync()!).toString();
    print("Ingrese la contraseña");
    String pass = (stdin.readLineSync()!).toString();

    if(user == "admin" && pass == "1234"){
      print("Bienvenido!");
      break;
    }else{
      intentos--;
      print("Datos incorrectos, le quedan "+intentos.toString()+" intentos");
    }
  }
}