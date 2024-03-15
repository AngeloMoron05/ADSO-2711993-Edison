import 'dart:io';

void main(){
  Map<String,Map<String, String>> clientes = {};

  int op = -1;
  while(op!=0){
    print("\n-----------------------");
    print("1. Agregar cliente");
    print("2. Eliminar cliente");
    print("3. Mostrar cliente");
    print("4. Mostrar todos los clientes");
    print("5. Mostrar clientes por preferencia");
    print("0. Salir");
    print("-----------------------");
    op = int.parse(stdin.readLineSync().toString());

    switch(op){
      case 1:
        print("\nIngrese el NIF del cliente:");
        String nif = stdin.readLineSync().toString();
        print("Ingrese el nombre del cliente:");
        String nom = stdin.readLineSync().toString();
        print("Ingrese la direccion del cliente:");
        String dir = stdin.readLineSync().toString();
        print("Ingrese el telefono del cliente:");
        String telf = stdin.readLineSync().toString();
        print("Ingrese el correo del cliente:");
        String corr = stdin.readLineSync().toString();
        print("Ingrese el preferente del cliente:");
        String pref = stdin.readLineSync().toString();
        Map<String, String> datos = {
          'Nombre': nom,
          'Direccion': dir,
          'Telefono': telf,
          'Correo': corr,
          'Preferencia': pref,
        };
        clientes[nif] = datos;
        break;
      case 2:
        print("\nIngrese el NIF del cliente a eliminar:");
        String nif = stdin.readLineSync().toString();
        clientes.remove(nif);
        break;
      case 3:
        print("\nIngrese el NIF del cliente a mostrar:");
        String nif = stdin.readLineSync().toString();
        print(clientes[nif]);
        break;
      case 4:
        print("Clientes registrados:");
        clientes.forEach((key, value) {
          print("-----------------------");
          print("NIF °"+key+":");
          print(value);
          print("-----------------------");
        });
        break;
      case 5:
        break;
      case 0:
        break;
      default:
        print("ERROR");
        break;
    }
  }
}