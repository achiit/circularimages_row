import 'package:flutter/material.dart';

enum RowDirection {
  leftToRight,
  rightToLeft,
}

class CircularImagesRow extends StatelessWidget {
  final List<String> images;
  final double width;
  final RowDirection direction;

  const CircularImagesRow({
    Key? key,
    required this.images,
    required this.width,
    this.direction = RowDirection.leftToRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: _buildImageWidgets(),
    );
  }

  List<Widget> _buildImageWidgets() {
    List<Widget> widgets = [];
    for (int i = 0; i < images.length; i++) {
      widgets.add(
        Container(
          margin: EdgeInsets.symmetric(vertical: 0),
          child: Align(
            widthFactor: 0.6,
            child: CircleAvatar(
              radius: width * 0.09,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: width * 0.08,
                backgroundImage: NetworkImage(images[i]),
              ),
            ),
          ),
        ),
      );
    }
    if (direction == RowDirection.rightToLeft) {
      widgets = widgets.reversed.toList();
    }
    return widgets;
  }
}
