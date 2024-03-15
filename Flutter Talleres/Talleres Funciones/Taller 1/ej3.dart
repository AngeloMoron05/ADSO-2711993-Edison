void main(){
  dynamic a = "Primera";
  dynamic b = "Segunda";

  print(a);
  print(b);

  List<dynamic> alm = [a,b];
  intercambiar(alm);

  a = alm[1];
  b = alm[0];

  print(a);
  print(b);
}

void intercambiar(List<dynamic> alm){
  dynamic temp = alm[0];
  alm[0] = alm[1];
  alm[1] = temp;
}
