import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String ruta;

  const Labels({
    super.key,
    required this.ruta,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titulo,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 10.0),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, ruta);
          },
          child: Text(
            subtitulo,
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
