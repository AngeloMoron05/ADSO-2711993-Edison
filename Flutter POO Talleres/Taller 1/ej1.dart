import 'dart:io';

void main () {
  CuentaBancaria cuenta1 = new CuentaBancaria("1234567890", "1232597687", 0, 12);

  cuenta1.imprimirDatosCuenta();

  cuenta1.ingresarSaldo();

  cuenta1.imprimirDatosCuenta();

  int cantR = cuenta1.retirarSaldo();
  print(cantR);

  cuenta1.imprimirDatosCuenta();
}

class CuentaBancaria{
  String numeroCuenta;
  String numeroDocumento;
  int saldoActual;
  int porInteresAnual;

  CuentaBancaria(this.numeroCuenta, this.numeroDocumento, this.saldoActual, this.porInteresAnual) {
    this.numeroCuenta = numeroCuenta;
    this.numeroDocumento = numeroDocumento;
    this.saldoActual = saldoActual;
    this.porInteresAnual = porInteresAnual;
  }

  void ingresarSaldo(){
    print("");
    print("Ingrese el saldo a ingresar en la cuenta:");
    saldoActual += int.parse(stdin.readLineSync()!);
    print("Saldo ingresado.");
  }

  int retirarSaldo(){
    print("");
    print("Ingrese el saldo a retirar de la cuenta:");
    int saldoRetirar = int.parse(stdin.readLineSync()!);
    if(saldoActual >= saldoRetirar){
      saldoActual -= saldoRetirar;
      print("Saldo retirado.");
      return saldoRetirar;
    }else{
      print("Saldo insuficiente.");
      return 0;
    }
  }

  void imprimirDatosCuenta(){
    print("");
    print(numeroCuenta);
    print(numeroDocumento);
    print(saldoActual);
    print(porInteresAnual);
  }
}