import 'dart:io';

void main(){
  print("Ingrese el numero de empleados.");
  int empl = int.parse(stdin.readLineSync()!);

  int cont = 1;
  double saltot = 0;
  int menT = 0;
  int mayT = 0;
  print("");
  while(cont <= empl){
    print("Ingrese el salario del empleado.");
    double sal = double.parse(stdin.readLineSync()!);
    saltot += sal;
    if(sal < 300){
      menT += 1;
    }else{
      mayT += 1;
    }
    cont++;
  }
  print('\nEmpleados que cobran menos de 300\$: $menT\nEmpleados que cobran mas de 300\$: $mayT\nImporte a gastar en salarios: $saltot');
}