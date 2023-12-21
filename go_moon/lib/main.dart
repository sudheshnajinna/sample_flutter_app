import 'package:flutter/material.dart';
import 'styled_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Grid Items',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StyledListScreen(),
    );
  }
}
