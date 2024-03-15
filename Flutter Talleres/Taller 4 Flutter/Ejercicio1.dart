import 'dart:io';

void main(){
  print("Ingrese el numero de trabajadores");
  var trabajadores = int.parse(stdin.readLineSync()!);
  print("Ingrese el numero de horas trabajadas");
  var horas = int.parse(stdin.readLineSync()!);
  print("Ingrese el valor por hora");
  var vp = int.parse(stdin.readLineSync()!);

  var nomina;
  var subtransp;

  if(trabajadores>50){
    nomina = horas * vp;
    subtransp = nomina * 20/100;
    print("El valor de la nomina es de: "+nomina.toString()+", mas un subcidio de transporte de: "+subtransp.toString());
  }else{
    nomina = horas * vp;
    print("El valor de la nomina es de: "+nomina.toString());
  }
}