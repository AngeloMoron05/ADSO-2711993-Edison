import 'dart:io';

void main(){
  print("Ingrese el nombre del empleado");
  var name = (stdin.readLineSync()!);
  print("Ingrese el valor hora del empleado");
  var vh = int.parse(stdin.readLineSync()!);
  print("Ingrese los años de antigüedad el empleado");
  var years = int.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de horas trabajadas en el mes");
  var horas = int.parse(stdin.readLineSync()!);

  var tot = vh * horas;
  var ext = 0;
  if(years>=1){
    ext = years * 30000;
  }
  var tb = tot + ext;
  var imp = tb * 13/100;
  var vn = tb - imp;

  print("-----------------------------");
  print("Nombre: "+name);
  print("Antigüedad del empleado: "+years.toString()+" años");
  print("Valor por hora: "+vh.toString());
  print("Total a cobrar en bruto: "+tb.toString());
  print("Total de descuentos: "+imp.toString());
  print("Valor neto a cobrar: "+vn.toString());
  print("-----------------------------");
}