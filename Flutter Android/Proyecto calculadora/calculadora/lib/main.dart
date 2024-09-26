import 'package:flutter/material.dart';
import 'package:calculadora/calculadora/calculadora.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 0, 255, 221),
        useMaterial3: true,
      ),
      home: const Calculadora(),
    );
  }
}
