void main(){
  List abecedario = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "t", "u", "v", "w", "x", "y", "z"];
  List eliminar = [];

  for(String x in abecedario){
    if(abecedario.indexOf(x)%3 == 0){
      eliminar.add(x);
    }
  }

  eliminar.forEach((x) => abecedario.remove(x));

  print(abecedario);
}