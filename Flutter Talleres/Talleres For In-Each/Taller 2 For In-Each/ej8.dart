import 'dart:io';

void main() {
    print('Introduce las palabras en español e inglés separadas por dos puntos, y cada par separado por comas:');
    String entrada = stdin.readLineSync()!;

    Map<String, String> diccionario = {};
    List<String> pares = entrada.split(',');

    for (String par in pares) {
        List<String> palabras = par.trim().split(':');
        if (palabras.length == 2) {
        diccionario[palabras[0].trim()] = palabras[1].trim();
        }
    }

    print('Introduce una frase en español para traducir:');
    String frase = stdin.readLineSync()!.toString();

    List<String> palabrasFrase = frase.split(' ');

    List<String> traduccion = [];
    for (String palabra in palabrasFrase) {
      String? traduccionPalabra = diccionario[palabra];
      traduccion.add(traduccionPalabra ?? palabra);
    }

    print('La traducción de la frase es:');
    print(traduccion.join(' '));
}