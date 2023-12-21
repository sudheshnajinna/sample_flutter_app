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
      color: Color.fromARGB(255, 29, 2, 45), 
      fontWeight: FontWeight.bold,
      fontFamily: 'Times New Roman',
      fontSize: 24,
    ),
  ),
  centerTitle: true,
  backgroundColor: Color.fromARGB(207, 161, 105, 235), 
),
backgroundColor: Color.fromARGB(141, 221, 185, 245),
      body: Center( 
        child: Container(
          width: 250, 
          child: ListView.builder(
            itemCount: 5, 
            itemBuilder: (context, index) {
              return GridItem(index: index); 
            },
          ),
        ),
      ),
    );
  }
}
