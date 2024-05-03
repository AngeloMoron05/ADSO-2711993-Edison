import 'dart:io';

void main() {
  Cafetera cafeteraExpress = new Cafetera(1000, 0);

  cafeteraExpress.ReiniciarCafetera();

  cafeteraExpress.agregarCafe();

  int cafeServido = cafeteraExpress.servirCafe();
  print(cafeServido);

  cafeteraExpress.vaciarTetera();
}

class Cafetera{
  int capacidadMaxima;
  int cantidadActual;

  Cafetera(this.capacidadMaxima, this.cantidadActual){
    this.capacidadMaxima = capacidadMaxima;
    this.cantidadActual = cantidadActual;
  }

  void ReiniciarCafetera(){
    capacidadMaxima = 1000;
    cantidadActual = 0;
    print("Cafetera vacia.");
  }

  void agregarCafe(){
    print("Ingrese la cantidad de cafe a ingresar.");
    int cantidadIngresar = int.parse(stdin.readLineSync()!);
    if(cantidadIngresar > 1000){
      print("El cafe a ingresar supera la capacidad de la tetera");
    }else{
      cantidadActual += cantidadIngresar;
      print("Cafe agregado.");
    }
  }

  void vaciarTetera(){
    cantidadActual = 0;
    print("Cafetera vaciada.");
  }

  int servirCafe(){
    print("Ingrese la cantidad de cafe a hervir");
    int cafeHer = int.parse(stdin.readLineSync()!);
    if(cafeHer <= cantidadActual){
      cantidadActual -= cafeHer;
      print("Cafe servido.");
      return cafeHer;
    }else{
      cafeHer = cantidadActual;
      cantidadActual = 0;
      print("Cafe servido.");
      return cafeHer;
    }
  }
}