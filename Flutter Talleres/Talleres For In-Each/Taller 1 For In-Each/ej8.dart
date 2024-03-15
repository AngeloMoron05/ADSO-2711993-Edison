import 'dart:io';

void main(){
  print("Ingrese una palabra:");
  String palabra = stdin.readLineSync()!.toLowerCase();

  int contA = 0;
  int contE = 0;
  int contI = 0;
  int contO = 0;
  int contU = 0;

  for(var letra in palabra.split("")){
    if(letra == "a"){
      contA++;
    }else if(letra == "e"){
      contE++;
    }else if(letra == "i"){
      contI++;
    }else if(letra == "o"){
      contO++;
    }else if(letra =="u"){
      contU++;
    }
  }

  if(contA > 0){
    print("La vocal A aparece $contA veces.");
  }
  if(contE > 0){
    print("La vocal E aparece $contE veces.");
  }
  if(contI > 0){
    print("La vocal I aparece $contI veces.");
  }
  if(contO > 0){
    print("La vocal O aparece $contO veces.");
  }
  if(contU > 0){
    print("La vocal U aparece $contU veces.");
  }
}