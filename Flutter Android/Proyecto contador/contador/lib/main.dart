import 'package:flutter/material.dart';
import 'package:contador/presentacion/pantallas/contador_pantallas_funciones.dart';
import 'package:contador/presentacion/pantallas/contador_pantallas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const ContadorPantallasFunciones(),
    );
  }
}