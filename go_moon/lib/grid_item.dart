import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  final int index;

  const GridItem({Key? key, required this.index}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    List<Color> boxColors = [
      Color.fromARGB(131, 5, 73, 140),
      Color.fromARGB(139, 5, 73, 150),
      Color.fromARGB(112, 8, 43, 94),
      Color.fromARGB(145, 5, 48, 85),
      Color.fromARGB(122, 3, 18, 40),
      // Add as many colors as you have images or as needed for your design
    ];

    List<String> values = [
      '10,000',
      '12,000',
      '15,000',
      '16,000',
      '17,000',
      // Add as many values as you have images or as needed for your design
    ];

    // Ensure you have five images named 'image1.png' through 'image5.png' in your 'assets/images' folder.
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 120, // Fixed height for each grid item
        margin: const EdgeInsets.symmetric(vertical: 10), // Space between grid items
        decoration: BoxDecoration(
          color: _isHovering
              ? boxColors[widget.index % boxColors.length].withOpacity(0.5)
              : boxColors[widget.index % boxColors.length].withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
    BoxShadow(
      color: Color.fromARGB(121, 131, 45, 212).withOpacity(0.5), // Adjust the shadow color and opacity
      spreadRadius: 1,
      blurRadius: 6,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
          border: Border.all(
            color: _isHovering
                ? Color.fromARGB(147, 168, 2, 130).withOpacity(0.9)
                : Color.fromARGB(145, 160, 109, 243).withOpacity(0.7),
            width: 3,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image${widget.index + 1}.png', // Make sure image assets are correctly named and placed
              width: 60, // Set a fixed width for the images
              height: 60, // Set a fixed height for the images
            ),
            SizedBox(height: 8), // Spacing between the image and text
            Text(
              values[widget.index % values.length], // Use the values list
              style: TextStyle(
                color: Color.fromARGB(248, 99, 5, 188),
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Times New Roman',
    
              ),
            ),
          ],
        ),
      ),
    );
  }
}
