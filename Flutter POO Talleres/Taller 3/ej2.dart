void main(){
  Empleado david = new Empleado("1", "David", "Garcia", "david@mail.com", "3000000001");
  david.showEmpleado();
  Programador angelo = new Programador("2", "Angelo", "Moron", "angelo@mail.com", "3000000002", "Frontend", "AngeloMoron05");
  angelo.showProgramador();
}

class Empleado{
  String id;
  String nombre;
  String apellido;
  String correo;
  String numeroTlf;

  Empleado(this.id, this.nombre, this.apellido, this.correo, this.numeroTlf);

  void showEmpleado(){
    print("\n"+id);
    print(nombre);
    print(apellido);
    print(correo);
    print(numeroTlf);
  }
}

class Programador extends Empleado{
  String area;
  String gitHubUser;

  Programador(String id, String nombre, String apellido, String correo, String numeroTlf, this.area, this.gitHubUser) : super(id, nombre, apellido, correo, numeroTlf);

  void showProgramador(){
    super.showEmpleado();
    print(area);
    print(gitHubUser);
  }
}