import 'package:flutter/material.dart';
import 'grid_item.dart';

class StyledListScreen extends StatelessWidget {
  const StyledListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'Sample Project: SJ',
    style: TextStyle(
      color: Colors.black, // or any color you prefer
      fontWeight: FontWeight.bold,
      fontFamily: 'Times New Roman',
      fontSize: 24,
    ),
  ),
  centerTitle: true, // To center the AppBar title
  backgroundColor: Color.fromARGB(207, 161, 105, 235), // Set the AppBar background color
),

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
