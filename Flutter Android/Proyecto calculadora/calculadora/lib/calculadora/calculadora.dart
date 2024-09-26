import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text("Click${clickCounter == 1 ? '' : 's'}",
            style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),

          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      )
    );
  }
}