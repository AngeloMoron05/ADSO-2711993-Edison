import 'package:flutter/material.dart';

class SuMensajeBurbuja extends StatelessWidget {
  const SuMensajeBurbuja({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Mensaje Respondido", style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),
        _ImagenBurbuja(),
        const SizedBox(height: 10),
      ], 
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/6/62/Nissan_GT-R_T-spec_MY2024%2C_front%2C_2023.jpg',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Está enviando una imagen"),
          );
        },
      ), 
    ); 
  }
}
