import 'dart:io';
import 'dart:math';

void main(){
  int op = -1;
  while(op!=0){
    print("\n-----------------------");
    print("1. Sumar");
    print("2. Restar");
    print("3. Dividir");
    print("4. Multiplicar");
    print("5. Potencia");
    print("6. Raiz");
    print("0. Salir");
    print("-------------------------");
    op = int.parse(stdin.readLineSync().toString());

    switch(op){
      case 1:
        print("Ingresa el valor A");
        double a = double.parse(stdin.readLineSync().toString());
        print("Ingresa el valor B");
        double b = double.parse(stdin.readLineSync().toString());
        print('\n$a + $b = '+sumar(a,b));
        break;
      case 2:
        print("Ingresa el valor A");
        double a = double.parse(stdin.readLineSync().toString());
        print("Ingresa el valor B");
        double b = double.parse(stdin.readLineSync().toString());
        print('\n$a - $b = '+restar(a,b));
        break;
      case 3:
        print("Ingresa el dividendo");
        double a = double.parse(stdin.readLineSync().toString());
        print("Ingresa el divisor");
        double b = double.parse(stdin.readLineSync().toString());
        print('\n$a ÷ $b = '+dividir(a,b));
        break;
      case 4:
        print("Ingresa el valor A");
        double a = double.parse(stdin.readLineSync().toString());
        print("Ingresa el valor B");
        double b = double.parse(stdin.readLineSync().toString());
        print('\n$a x $b = '+multiplicar(a,b));
        break;
      case 5:
        print("Ingresa la base");
        double a = double.parse(stdin.readLineSync().toString());
        print("Ingresa el exponente");
        double b = double.parse(stdin.readLineSync().toString());
        print('\n$a ^ $b = '+potencia(a,b));
        break;
      case 6:
        print("Ingresa el radicando");
        double n = double.parse(stdin.readLineSync().toString());
        print('\n√$n = '+raiz(n));
        break;
      case 0:
        break;
      default:
        print("LA OPCION INGRESADA NO CORRESPONDE CON NINGUNA EXISTENTE.");
        break;
    }
  }
}

String sumar(double a, double b){
  return (a + b).toString();
}

String restar(double a, double b){
  return (a - b).toString();
}

String dividir(double a, double b){
  if(b!=0){
    return (a / b).toString();
  }else{
    return "Infinito";
  }
}

String multiplicar(double a, double b){
  return (a * b).toString();
}

String potencia(double a, double b){
  return pow(a, b).toString();
}

String raiz(double n){
  return sqrt(n).toString();
}