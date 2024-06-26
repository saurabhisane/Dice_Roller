import 'package:flutter/material.dart';

class Text_Style extends StatelessWidget{
  const Text_Style(this.text , {super.key});
  final String text;
  @override
  Widget build(context) {
    return  Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white,
      ),
    );
  }
}