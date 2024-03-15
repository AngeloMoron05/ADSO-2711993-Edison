import 'dart:io';

void main(){
  Map<String,String> facturas = {};
  Map<String,String> facturasPagadas = {};

  int op = -1;
  while(op!=0){
    print("\n-----------------------");
    print("1. Agregar Factura");
    print("2. Pagar Facturas");
    print("0. Salir");
    print("-----------------------");
    op = int.parse(stdin.readLineSync().toString());

    switch(op){
      case 1:
        print("\nIngrese el numero de la factura:");
        String num = stdin.readLineSync().toString();
        print("Ingrese el coste de la factura:");
        String cost = stdin.readLineSync().toString();
        facturas[num] = cost;
        break;
      case 2:
        print("\nIngrese el numero de la factura a pagar:");
        String num = stdin.readLineSync().toString();
        facturasPagadas[num] = facturas[num].toString();
        facturas.remove(num);
        break;
      case 0:
        print("\nFacturas pagadas:");
        facturasPagadas.forEach((key, value) => {print(key.toString()+":"+value.toString())});
        print("\nFacturas por pagar:");
        facturas.forEach((key, value) => {print(key.toString()+":"+value.toString())});
        break;
      default:
        print("ERROR");
        break;
    }
  }
}