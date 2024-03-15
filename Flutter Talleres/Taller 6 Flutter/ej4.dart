import 'dart:io';

void main(){
  print("Ingrese tres numeros diferentes");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  if(a > b && a > c){
    if(b>c){
      print(c.toString()+" - "+b.toString()+" - "+a.toString());
    }else{
      print(b.toString()+" - "+c.toString()+" - "+a.toString());
    }
  }else if(b > a && b > c){
    if(a>c){
      print(c.toString()+" - "+a.toString()+" - "+b.toString());
    }else{
      print(a.toString()+" - "+c.toString()+" - "+b.toString());
    }
  }else{
    if(a>b){
      print(b.toString()+" - "+a.toString()+" - "+c.toString());
    }else{
      print(a.toString()+" - "+b.toString()+" - "+c.toString());
    }
  }
}