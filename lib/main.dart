import 'package:flutter/material.dart';
import 'package:mypro/gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(
             Color.fromARGB(255, 217, 184, 20),
             Color.fromARGB(255, 204, 60, 15)
            ),
      ),
   ),
  );
}

