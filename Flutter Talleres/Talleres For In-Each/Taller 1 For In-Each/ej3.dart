import "dart:io";

void main(){
  List materias = ["Matemáticas", "Física", "Química", "Historia", "Lengua"];
  List notas = [];

  for(String x in materias){
    print("Ingrese la nota obtenida en la siguiente asignatura: "+x);
    double nota = double.parse(stdin.readLineSync().toString());
    notas.add(nota);
  }

  print("----------------------------------");
  print("NOTAS:");
  materias.forEach((x) => print(x+": "+notas[materias.indexOf(x)].toString()));
  print("----------------------------------");
}