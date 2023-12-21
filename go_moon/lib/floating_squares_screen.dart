import 'package:flutter/material.dart';
import 'grid_item.dart'; // Make sure to import the GridItem class

class FloatingSquaresScreen extends StatelessWidget {
  const FloatingSquaresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Squares'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 15, // Display 15 items (5 images, each repeated 3 times)
        itemBuilder: (BuildContext context, int index) {
          String imageName = 'assets/images/image${index % 5 + 1}.png';
          return GridItem(imageName: imageName); // Use the GridItem widget here
        },
      ),
    );
  }
}
