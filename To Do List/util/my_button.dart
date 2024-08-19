import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {

  final String text;
  VoidCallback onPressed;

  MyButton(
    {super.key, 
    required this.text,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Color.fromARGB(255, 127, 193, 247),
      onPressed: onPressed,
      child: Text(text)
    );
  }
}