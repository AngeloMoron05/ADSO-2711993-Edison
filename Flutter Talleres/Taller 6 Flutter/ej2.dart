import 'dart:io';

void main(){
  print("Ingrese el importe a cobrar");
  double din = double.parse(stdin.readLineSync()!);
  print("Ingrese el mes");
  String mes = (stdin.readLineSync()!).toString();

  switch(mes){
    case "Enero":
      double des = din * 15/100;
      double tot = din - des;
      print("Cantidad a cobrar con un descuento de 15%: "+tot.toString());
      break;
    case "Febrero":
      double des = din * 15/100;
      double tot = din - des;
      print("Cantidad a cobrar con un descuento de 15%: "+tot.toString());
      break;
    case "Marzo":
      double des = din * 15/100;
      double tot = din - des;
      print("Cantidad a cobrar con un descuento de 15%: "+tot.toString());
      break;
    case "Abril":
      double des = din * 20/100;
      double tot = din - des;
      print("Cantidad a cobrar con un descuento de 15%: "+tot.toString());
      break;
    case "Mayo":
      double des = din * 20/100;
      double tot = din - des;
      print("Cantidad a cobrar con un descuento de 20%: "+tot.toString());
      break;
    case "Junio":
      double des = din * 20/100;
      double tot = din - des;
      print("Cantidad a cobrar con un descuento de 20%: "+tot.toString());
      break;
    default:
      double tot = din;
      print("Cantidad a cobrar: "+tot.toString());
      break;
  }

}