import 'dart:io';

void main(){
  Libro libro = new Libro("", Persona("",""), "", "", "", "", "", Fecha("","",""));

  libro.ingresarDatosLibro();
  libro.imprimirDatosLibro();
}

class Libro{
  String titulo;
  Persona autor;
  String ISBN;
  String paginas;
  String edicion;
  String editorial;
  String lugar;
  Fecha fechaEditorial;

  Libro(this.titulo, this.autor, this.ISBN, this.paginas, this.edicion, this.editorial, this.lugar, this.fechaEditorial);

  void ingresarDatosLibro(){
    print("\nIngrese el titulo del libro");
    titulo = stdin.readLineSync()!;
    print("Ingrese el nombre y apellido del autor del libro");
    String nombre = stdin.readLineSync()!;
    String apellido = stdin.readLineSync()!;
    autor = new Persona(nombre, apellido);
    print("Ingrese el ISBN del libro");
    ISBN = stdin.readLineSync()!;
    print("Ingrese el numero de paginas del libro");
    paginas = stdin.readLineSync()!;
    print("Ingrese la edicion del libro");
    edicion = stdin.readLineSync()!;
    print("Ingrese la editorial del libro");
    editorial = stdin.readLineSync()!;
    print("Ingrese el lugar del libro");
    lugar = stdin.readLineSync()!;
    print("Ingrese la fecha de editorial del libro");
    String dia = stdin.readLineSync()!;
    String mes = stdin.readLineSync()!;
    String year = stdin.readLineSync()!;
    fechaEditorial = new Fecha(dia, mes, year);
  }

  void imprimirDatosLibro(){
    print("\n|-------------------------------------------|");
    print(titulo.toUpperCase());
    print("|-------------------------------------------|");
    print(autor.showPersona());
    print(ISBN);
    print(paginas);
    print(edicion);
    print(editorial);
    print(lugar);
    print(fechaEditorial.showFecha());
    print("|-------------------------------------------|");
  }
}

class Persona{
  String nombre;
  String apellido;
  
  Persona(this.nombre, this.apellido){
    this.nombre = nombre;
    this.apellido = apellido;
  }

  String showPersona(){
    return this.nombre+" "+this.apellido;
  }
}

class Fecha{
  String dia;
  String mes;
  String year;

  Fecha(this.dia, this.mes, this.year){
    this.dia = dia;
    this.mes = mes;
    this.year = year;
  }

  String showFecha(){
    return dia+"/"+mes+"/"+year;
  }
}