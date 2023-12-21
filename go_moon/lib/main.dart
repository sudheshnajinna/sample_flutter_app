import 'package:flutter/material.dart';
import 'floating_squares_screen.dart'; // Import FloatingSquaresScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Squares App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FloatingSquaresScreen(),
    );
  }
}
