import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: GradientContainer(
            [Colors.deepOrange, Colors.deepPurple, Colors.blue]),
      ),
    ),
  );
}
