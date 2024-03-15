import 'dart:io';

void main(){
  print("Ingrese el numero de hombres");
  double hom = double.parse(stdin.readLineSync()!);
  print("Ingrese el numero de mujeres");
  double muj = double.parse(stdin.readLineSync()!);

  double tot = hom + muj;
  double mujP = muj * 100/tot;
  double homP = hom * 100/tot;

  if(mujP>homP){
    print("Mayor cantidad de mujeres con un porcentaje de: "+mujP.toString()+"%, y de hombres de: "+homP.toString()+"%");
  }else{
    print("Mayor cantidad de hombres con un porcentaje de: "+homP.toString()+"%, y de mujeres de: "+mujP.toString()+"%");
  }
}