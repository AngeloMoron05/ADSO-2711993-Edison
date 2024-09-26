import 'dart:io';

void main() {
  Profesor edison = new Profesor('1001', 'edison', '30', 'M', 100, 9, 'Estructura de datos');
  List<Aprendices> aprendices = [];
  aprendices.add(new Aprendices('1002', 'angelo', '18','H', 200, 3, 8));
  aprendices.add(new Aprendices('1003', 'alex', '20','H', 200, 23, 6));
  aprendices.add(new Aprendices('1004', 'esteban', '19','H', 200, 31, 4));
  aprendices.add(new Aprendices('1005', 'yefry', '26','H', 200, 12, 7));
  aprendices.add(new Aprendices('1006', 'daniela', '18','M', 200, 5, 6));
  aprendices.add(new Aprendices('1007', 'paula', '19','M', 200, 7, 1));
  Aula salon = new Aula('101', 6, 'Estructura de datos', '1ro', 'Comercios y Servicios');

  Clase viernes = new Clase(salon, aprendices, edison);
  viernes.confirmacionClase();
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

  String showDatosBasicos() {
    return "$cedula, $nombre";
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
      if(aprendicesClase.length>=(aulaClase.getCapacidadEstudiantes()*60/100)){
      print("La clase se puede realizar.");
      List<Aprendices> aprendicesMujeres = [];
      List<Aprendices> aprendicesHombres = [];
      aprendicesClase.forEach((x) {
        if(x.getSexo()=="M" && x.getCalificacion()>=5){
          aprendicesMujeres.add(x);
        }else if(x.getSexo()=="H" && x.getCalificacion()>=5){
          aprendicesHombres.add(x);
        }
      });
      print("\tAPRENDICES HOMBRES APROBADOS");
      aprendicesHombres.forEach((x) => print(x.showDatosBasicos()));
      print("\tAPRENDICES MUJERES APROBADAS");
      aprendicesMujeres.forEach((x) => print(x.showDatosBasicos()));
      }else{
        print("El numero de aprendices no supera el minimo requerido, NO se puede llevar a cabo la clase.");
      }
    }else{
      print("La clase no se puede realizar, el profesor aignado al aula no corresponde a la materia.");
    }
  }
}