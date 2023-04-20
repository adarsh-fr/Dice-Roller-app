import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:GradientContainer(const [Color.fromARGB(255, 96, 13, 221),Color.fromARGB(255, 105, 171, 225),Color.fromARGB(255, 231, 111, 197)]),
      ),
    ),
  );
}


