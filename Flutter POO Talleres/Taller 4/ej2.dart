void main() {
  
}

class Profesor{
  String cedula;
  String nombre;
  String seccionDepartamental;
  String area;
  List<Asignatura> asignaturas;
  List<String> diasPreferidos;

  Profesor(this.cedula, this.nombre, this.seccionDepartamental, this.area, this.asignaturas, this.diasPreferidos);

  void addAsignatura(Asignatura asng) {
    asignaturas.add(asng);
  }
}

class Departamento{
  String nombre;

  Departamento(this.nombre);
}

class Asignatura{
  String nombre;
  int creditos;
  String tipo; // 'teorica' o 'practica'
  Curso curso;

  Asignatura(this.nombre, this.creditos, this.tipo, this.curso);
}

class Aula {
  String nombre;
  String ubicacion;
  int capacidad;
  String tipo; // 'teoria' o 'laboratorio'
  String pupitre; // solo para aulas de teoría
  bool altavoces; // solo para aulas de laboratorio
  bool videoconferencia; // solo para aulas de laboratorio

  Aula.teoria(this.nombre, this.ubicacion, this.capacidad, this.pupitre) : tipo = 'teoria', altavoces = false, videoconferencia = false;
  Aula.laboratorio(this.nombre, this.ubicacion, this.capacidad, this.altavoces, this.videoconferencia) : tipo = 'laboratorio', pupitre = '';
}

class Curso{
  String nombre;
  List<Asignatura> asignaturas;

  Curso(this.nombre, this.asignaturas);

  void agregarAsignatura(Asignatura asignatura) {
    asignaturas.add(asignatura);
  }
}

