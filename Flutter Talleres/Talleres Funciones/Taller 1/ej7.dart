import 'dart:io';

void main(){
  print("Ingrese una palabra para calcular .");
  String word = stdin.readLineSync()!.toLowerCase();
  
  print(contarVocales(word));
}

String contarVocales(String word){
  int contA = 0;
  int contE = 0;
  int contI = 0;
  int contO = 0;
  int contU = 0;

  for(var letra in word.split("")){
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

  return 'La vocal A aparece $contA veces\nLa vocal E aparece $contE veces\nLa vocal I aparece $contI veces\nLa vocal O aparece $contO veces\nLa vocal U aparece $contU veces\n';
}