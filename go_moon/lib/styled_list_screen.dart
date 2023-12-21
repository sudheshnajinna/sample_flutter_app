import 'package:flutter/material.dart';
import 'grid_item.dart';

class StyledListScreen extends StatelessWidget {
  const StyledListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'SAMPLE - PROJECT : SJ',
    style: TextStyle(
      color: Color.fromARGB(255, 29, 2, 45), // or any color you prefer
      fontWeight: FontWeight.bold,
      fontFamily: 'Times New Roman',
      fontSize: 24,
    ),
  ),
  centerTitle: true, // To center the AppBar title
  backgroundColor: Color.fromARGB(207, 161, 105, 235), // Set the AppBar background color
),
backgroundColor: Color.fromARGB(141, 221, 185, 245),
      body: Center( // Center the grid on the screen
        child: Container(
          width: 250, // Fixed width for the centered grid column
          child: ListView.builder(
            itemCount: 5, // Assuming you have 3 items for now
            itemBuilder: (context, index) {
              return GridItem(index: index); // Custom grid item widget
            },
          ),
        ),
      ),
    );
  }
}
