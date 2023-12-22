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
    // Preset colors for normal state
    List<Color> boxColors = [
      Color.fromARGB(131, 5, 73, 140),
      Color.fromARGB(139, 5, 73, 150),
      Color.fromARGB(112, 8, 43, 94),
      Color.fromARGB(145, 5, 48, 85),
      Color.fromARGB(122, 3, 18, 40),
    ];

    // Preset colors for hover state
    List<Color> hoverColors = [
      // Replace with actual hover colors if needed
      Color.fromARGB(114, 168, 95, 233), // Example yellow color
      // Add more colors as needed
    ];

    // Preset values
    List<String> values = [
      '10,000',
      '12,000',
      '15,000',
      '16,000',
      '17,000',
    ];

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 120,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: _isHovering
              ? hoverColors[widget.index % hoverColors.length].withOpacity(0.5)
              : boxColors[widget.index % boxColors.length].withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
          boxShadow: _isHovering
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Color.fromARGB(147, 168, 2, 130).withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 10),
                  ),
                ],
          border: Border.all(
            color: _isHovering
                ? Color.fromARGB(106, 63, 2, 101).withOpacity(0.9)
                : Color.fromARGB(84, 160, 109, 243).withOpacity(0.7),
            width: 6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: _isHovering ? Offset(0, -10) : Offset(0, 0),
              child: Image.asset(
                'assets/images/image${widget.index + 1}.png',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(height: 8),
            Text(
              values[widget.index % values.length],
              style: TextStyle(
                color: _isHovering ? Colors.black : Colors.white,
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
