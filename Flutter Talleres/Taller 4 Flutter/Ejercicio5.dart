import 'dart:io';

void main(){
  print("Ingrese el valor total de lo comprado en el almacen");
  var val = double.parse(stdin.readLineSync()!);

  var vn;
  double des = 0;
  if(val>=200000){
    des = val * 20/100;
    vn = val - des;
  }else if(val>=100000){
    des = val * 10/100;
    vn = val - des;
  }else{
    vn = val;
  }

  print("-----------------------------");
  print("Valor de compra: "+val.toString());
  print("Descuesto: "+des.toString());
  print("Valor neto de compra: "+vn.toString());
  print("-----------------------------");
}