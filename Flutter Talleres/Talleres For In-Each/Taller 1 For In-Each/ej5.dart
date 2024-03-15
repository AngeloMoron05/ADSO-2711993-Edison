void main(){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  String cadena = "";
  numeros.reversed.forEach((x) => cadena=cadena+x.toString()+",");
  print(cadena);
}