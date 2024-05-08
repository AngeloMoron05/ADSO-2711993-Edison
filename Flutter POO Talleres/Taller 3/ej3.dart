void main(){
  Empleado david = new Empleado("1", "David", "Garcia", "david@mail.com", "3000000001");
  david.showEmpleado();

  PagoExtraEmpleado angelo = new PagoExtraEmpleado("2", "Angelo", "Moron", "angelo@mail.com", "3000000002", 43);
  angelo.showEmpleado();
  angelo.definirPago();
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

class PagoExtraEmpleado extends Empleado{
  int horasTrb;

  PagoExtraEmpleado(String id, String nombre, String apellido, String correo, String numeroTlf, this.horasTrb) : super(id, nombre, apellido, correo, numeroTlf);

  void definirPago(){
    print("");
    if(horasTrb>48){
      int horasExtra = horasTrb - 48;
      print('Se deben pagar ${horasExtra*60} minutos extra.');
    }else{
      print('No se deben pagar horas extra.');
    }
  }
}