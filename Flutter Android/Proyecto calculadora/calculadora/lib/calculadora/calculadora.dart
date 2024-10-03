import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _Calculadora();
}

class _Calculadora extends State<Calculadora> {
  String salida = "0";

  void botonPresionado(String buttonText) {
    setState(() {
      if (salida == "0") {
        salida = buttonText;
      } else {
        salida += buttonText;
      }
    });
  }

  void limpiar() {
    setState(() {
      salida = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        titleTextStyle: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 24, 173, 184)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerRight,
            child: Text(
              salida,
              style: const TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              crearBoton("7"),
              crearBoton("8"),
              crearBoton("9"),
              crearBoton("/"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              crearBoton("4"),
              crearBoton("5"),
              crearBoton("6"),
              crearBoton("*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              crearBoton("1"),
              crearBoton("2"),
              crearBoton("3"),
              crearBoton("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              crearBoton("C"),
              crearBoton("0"),
              crearBoton("="),
              crearBoton("+"),
            ],
          ),
        ],
      ),
    );
  }

  Widget crearBoton(String buttonText) {
    Color buttonColor = const Color.fromARGB(255, 24, 173, 184);
    Color textColor = Colors.white;

    if (buttonText == "C") {
      buttonColor = const Color.fromARGB(255, 133, 132, 132); // Color para el botón de limpiar
    } else if (buttonText == "=") {
      buttonColor = const Color.fromARGB(255, 103, 207, 255); // Color para el botón de igual
    }

    return ElevatedButton(
      onPressed: () {
        if (buttonText == "C") {
          limpiar();
        } else if (buttonText == "=") {
        } else {
          botonPresionado(buttonText);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size(80, 80),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 24, color: textColor),
      ),
    );
  }
}
