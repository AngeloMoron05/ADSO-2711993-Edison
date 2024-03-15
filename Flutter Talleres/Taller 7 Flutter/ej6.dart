import 'dart:io';

void main(){
  print("Ingrese su voto.");

  print("Candidato A por el partido rojo");
  print("Candidato B por el partido verde");
  print("Candidato C por el partido azul.");
  String eleccion = stdin.readLineSync()!;
  eleccion = eleccion.toUpperCase();
  
  switch(eleccion){
    case "A":
      print("Has votado por el candidato A del partido rojo.");
      break;
    case "B":
      print("Has votado por el candidato B del partido verde.");
      break;
    case "C":
      print("Has votado por el candidato C del partido azul.");
      break;
    default:
      print("Opcion incorrecta.");
  }
}