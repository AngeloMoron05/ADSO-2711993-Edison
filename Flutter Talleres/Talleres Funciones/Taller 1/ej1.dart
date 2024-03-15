void main(){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

  numeros.forEach((num) => print('$num al cuadrado es igual a: '+cuadrado(num).toString()));
}

int cuadrado(int num) => num * num;