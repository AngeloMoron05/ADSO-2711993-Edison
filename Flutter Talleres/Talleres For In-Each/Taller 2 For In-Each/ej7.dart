import 'dart:io';

void main() {
    Map <String, int> cesta = {};
    bool continuar = true;
    for(int i = 0; continuar; i++) {
        print("Ingresa el producto a añadir: ");
        String dato = stdin.readLineSync()!;
        print("Ingresa su valor: ");
        int valor = int.parse(stdin.readLineSync()!);
        cesta[dato] = valor;
        print("¿Desea añadir mas productos a su compra? s/n");
        String respuesta =stdin.readLineSync()!;
        if(respuesta=="n" || respuesta=="N"){
            continuar = false;
        }
    }
    int valorTotal = 0;
    print("Lista de compra");
    cesta.forEach((producto,valor){
        print("$producto: $valor");
        valorTotal += valor;
    });
    print("El valor total es $valorTotal");
}