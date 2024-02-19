import 'package:circularimages_row/circular_images_row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Images Row Example',
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  final List<String> placeholderImages = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Images Row Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircularImagesRow(
            images: placeholderImages,
            direction: RowDirection.rightToLeft,
            width: 250.0, // Adjust width according to your needs
          ),
        ),
      ),
    );
  }
}
