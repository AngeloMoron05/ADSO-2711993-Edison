import 'package:flutter/material.dart';

const Color _colorPersonalizado =
  Color(0xFF49149f);

const List<Color> _colorTemas = [
  _colorPersonalizado,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange, 
  Colors.pink,
];

class AppTema {

  final int colorSeleccionado;
  AppTema({required this.colorSeleccionado})
      : assert(colorSeleccionado >= 0 && colorSeleccionado < _colorTemas.length,
            'Índice fuera de rango');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTemas[
          4],
    );
  }
}
