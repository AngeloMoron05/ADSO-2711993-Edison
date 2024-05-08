import 'dart:io';

void main(){
  Multimedia cancion = new Multimedia("On my own", "Ashes Remain", "mp4", "3,5");

  cancion.showAtributos();

  Multimedia cancion2 = new Multimedia("Right here", "Ashes Remain", "mp4", "3,5");
  print("\n"+cancion.equals(cancion2).toString());
}

class Multimedia{
  String titulo;
  String autor;
  String formato;
  String duracionMin;

  Multimedia(this.titulo, this.autor, this.formato, this.duracionMin){
    this.titulo = titulo;
    this.autor = autor;
    this.formato = formato;
    this.duracionMin = duracionMin;
  }

  getTitulo(){
    return titulo;
  }
  getAutor(){
    return autor;
  }
  getFormato(){
    return formato;
  }
  getDuracionMin(){
    return duracionMin;
  }

  void showAtributos(){
    print("\n"+titulo);
    print(autor);
    print(formato);
    print(duracionMin);
  }

  bool equals(Multimedia obtComp){
    if(obtComp.getTitulo()==titulo && obtComp.getAutor()==autor){
      return true;
    }else{
      return false;
    }
  }
}