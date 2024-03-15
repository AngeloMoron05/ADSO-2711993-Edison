import "dart:io";

void main(){
  List materias = ["Matemáticas", "Física", "Química", "Historia", "Lengua"];
  List aprovadas = [];

  for(String x in materias){
    print("Ingrese la nota obtenida en la siguiente asignatura: "+x);
    double nota = double.parse(stdin.readLineSync().toString());
    if(nota >= 3){
      aprovadas.add(x);
    }
  }

  aprovadas.forEach((x) => materias.remove(x));

  print("----------------------------------");
  print("Materias por recuperar:");
  materias.forEach((x) => print(x));
  print("----------------------------------");
}