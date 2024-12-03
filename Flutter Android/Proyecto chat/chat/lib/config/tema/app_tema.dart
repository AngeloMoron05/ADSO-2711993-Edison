import 'package:flutter/material.dart';

const Color _colorPersonalizado = Color(0xFFf41949);

const List<Color> _colorTema = [
  _colorPersonalizado,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTema{
  ThemeData theme(dynamic selected) {

    
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTema[selected],
    );
  }
}
