import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const BotonAzul({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        elevation: 2,
        shape: const StadiumBorder(),
        minimumSize: const Size(double.infinity, 55.0),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
