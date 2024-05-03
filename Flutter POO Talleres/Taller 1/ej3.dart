import 'dart:io';

void main() {
  Cancion cancion = new Cancion("Angels Fall", "Breaking Benjamin");

  String nuevoTitulo = stdin.readLineSync()!;
  String nuevoAutor = stdin.readLineSync()!;
  cancion.setTitulo(nuevoTitulo);
  cancion.setAutor(nuevoAutor);

  print(cancion.getTitulo());
  print(cancion.getAutor());
}

class Cancion{
  String titulo;
  String autor;

  Cancion(this.titulo, this.autor){
    this.titulo = titulo;
    this.autor = autor;
  }

  setTitulo(titulo){
    this.titulo = titulo;
  }
  setAutor(autor){
    this.autor = autor;
  }

  getTitulo(){
    return this.titulo;
  }
  getAutor(){
    return this.autor;
  }
}