main() {
  int a;
  final double b = 10;
  const double c = 10;

  late final double x;
  x=10;
  print('Resultado $x');

  final List<String> persoFinal = ['hugo', 'paco', 'luis'];
  const List<String> persoConst = ['hugo', 'paco', 'luis'];

  persoFinal.add('angelo');
  
  print(persoFinal);
}