void main(){
  int n = 0;
  int sum = 0;
  while(n<=100){
    sum = n + sum;
    n++; 
  }
  print(sum.toString());
}