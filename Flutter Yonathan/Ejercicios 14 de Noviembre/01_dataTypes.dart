main() {
  String texto = 'hola mundo';
  print(texto);

  int a = 20;
  double b = 5.5;
  int? c;
  int _a = 30;
  double $b = 40; 

  c ??= 10;

  double resultado = a + b + c + _a + $b;
  print(resultado);

  //double b = 10.0 % 3;
  //print(b);

  String nombre1 = 'angelo';
  String nombre2 = "fabian";
  String nombreCompleto = '$nombre1 $nombre2'.toUpperCase();
  print(nombreCompleto);

  String multilinea = '''
  hola  $nombre1
  como estas $nombre2?
  muy bien $nombreCompleto
  ''';
  print(multilinea);

  bool isActive = true;
  bool isNotActive = !isActive;

  print(isActive);
  print(isNotActive);

  List<String> aprendices = ['ana', 'lucas', 'luisa', 'ferxxo'];
  print(aprendices);
}
