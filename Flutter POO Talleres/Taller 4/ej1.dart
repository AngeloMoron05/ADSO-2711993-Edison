import 'dart:io';

void main() {

}

class Persona{
  String cedula;
  String nombre;
  String edad;
  String sexo;
  int asistencia;
  int faltas;

  Persona(this.cedula, this.nombre, this.edad, this.sexo, this.asistencia, this.faltas);

  String showPersona() {
    return "Persona: $cedula, $nombre, $edad, $sexo";
  }
}

class Aprendices extends Persona{
  int calificacion;
  Aprendices(String cedula, String nombre, String edad, String sexo, int asistencia, int faltas, this.calificacion) : super(cedula, nombre, edad, sexo, asistencia, faltas);

  getSexo(){
    return sexo;
  }

  getCalificacion(){
    return calificacion;
  }
}

class Profesor extends Persona{
  String materiaAsignada;
  Profesor(String cedula, String nombre, String edad, String sexo, int asistencia, int faltas, this.materiaAsignada) : super(cedula, nombre, edad, sexo, asistencia, faltas);

  getMateriaAsignada(){
    return materiaAsignada;
  }
}

class Aula{
  String idAula;
  int capacidadEstudiantes;
  String asignatura;
  String piso;
  String cede;

  Aula(this.idAula, this.capacidadEstudiantes, this.asignatura, this.piso, this.cede);

  getCapacidadEstudiantes(){
    return capacidadEstudiantes;
  }

  getAsignatura(){
    return asignatura;
  }
}

class Clase{
  Aula aulaClase;
  List<Aprendices> aprendicesClase;
  Profesor profeClase;

  Clase(this.aulaClase, this.aprendicesClase, this.profeClase);

  void confirmacionClase(){
    if(aulaClase.getAsignatura()==profeClase.getMateriaAsignada()){
      if(aprendicesClase.length>=(aulaClase.getCapacidadEstudiantes())*60/100){
      print("La clase se puede realizar.");
      aprendicesClase.forEach((x) {
        List<Aprendices> aprendicesMujeres = [];
        List<Aprendices> aprendicesHombres = [];
        if(x.getSexo()=="M" && x.getCalificacion()>=5){
          aprendicesMujeres.add(x);
        }else if(x.getSexo()=="H" && x.getCalificacion()>=5){
          aprendicesHombres.add(x);
        }
        print("\tAPRENDICES HOMBRES APROBADOS");
        print(aprendicesHombres);
        print("\tAPRENDICES MUJERES APROBADAS");
        print(aprendicesMujeres);
      });
    }else{
      print("El numero de aprendices no supera el minimo requerido, NO se puede llevar a cabo la clase.");
    }
    }else{
      print("La clase no se puede realizar, el profesor aignado al aula no corresponde a la materia.");
    }
  }
}