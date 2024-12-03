main() {
  List<String> aprendices = ['ana', 'lucas', 'luisa', 'ferxxo'];
  aprendices.add('elba');
  aprendices.add('angelo');
  aprendices.add('angelo');
  print(aprendices);

  var aprendicesNoDuplicado = aprendices.toSet();
  print(aprendicesNoDuplicado);

  Map<int, dynamic> frutas = {
    0: 'banana',
    1: 'uva',
    2: 'pera',
    3: 'uva'
  };

  print(frutas);
  print(frutas[2]);

  Map<String, dynamic> heroes = new Map();
  heroes.addAll({
    'nombre': 'Robin',
    'apellido': 'Hood',
    'poder': 'Caridad',
  });
  print(heroes);
}
