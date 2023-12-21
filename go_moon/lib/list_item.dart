import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int index; // Index to distinguish between items

  ListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define item color based on index
    Color itemColor;
    switch (index) {
      case 0:
        itemColor = Colors.blue.shade700;
        break;
      case 1:
        itemColor = Colors.blue.shade800;
        break;
      case 2:
        itemColor = Colors.blue.shade900;
        break;
      default:
        itemColor = Colors.blue;
    }

    return Container(
      padding: EdgeInsets.all(8.0),
      color: itemColor,
      child: ListTile(
        leading: Image.asset('assets/images/image${index + 1}.png'), // Adjust the image asset accordingly
        title: Text(
          '${10 + index} ,000', // Adjust the text accordingly
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }
}
