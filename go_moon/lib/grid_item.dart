import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  final String imageName;

  const GridItem({Key? key, required this.imageName}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200), // Duration of the hover effect
        curve: Curves.easeIn, // Animation curve
        decoration: BoxDecoration(
          color: isHovering ? Colors.blue.withOpacity(0.3) : Colors.transparent,
          border: Border.all(
            color: isHovering ? Colors.blue.shade900 : Colors.blue.shade700,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(widget.imageName, fit: BoxFit.contain),
        ),
      ),
    );
  }

  void _setHovering(bool hovering) {
    setState(() {
      isHovering = hovering;
    });
  }
}
