void main(){
  dynamic a = "Primera";
  dynamic b = "Segunda";

  print('a = $a\nb = $b');
  print("\n"+intercambiar(a,b));
}

String intercambiar(dynamic a, dynamic b){
  dynamic temp = a;
  a = b;
  b = temp;
  return 'a = $a\nb = $b';
}
