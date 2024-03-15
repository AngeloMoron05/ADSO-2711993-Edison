
void main(){
  double cdA = 3500000;
  double cdB = 5000000;
  double years = 0;

  while(cdA<cdB){
    double porA = cdA * 15/100;
    cdA = cdA + porA;
    double porB = cdB * 7/100;
    cdB = cdB + porB;
    years++;
  }

  print("La ciudad A superara en poblacion a la B en: "+years.toString()+" años");
}