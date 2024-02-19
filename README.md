
# Circular Images Row
Circular Images Row is a Flutter package that provides a customizable widget for displaying a row of circular images.

## Features

- Displays a row of circular images.

- Supports specifying the direction of the row (left to right or right to left).

- Customizable width for the images.

  

## Installation

To use this package, add `circular_images_row` as a dependency in your `pubspec.yaml` file.
```yaml 
dependencies: 
  flutter: 
    sdk: flutter
  circular_images_row: ^1.0.0
```

## Example
Import the file to your project

```dart
import  'package:circularimages_row/circular_images_row.dart';
```
## Usage
The `CircularImagesRow` widget takes in a list of image URLs and an optional direction parameter to specify the direction of the row.

```dart
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

```
## Parameters

- `images`: List of image URLs to be displayed.

- `width`: Width of each circular image.
- `direction` (optional): Direction of the row (`RowDirection.leftToRight` or `RowDirection.rightToLeft`). Defaults to `RowDirection.leftToRight`.

## Testing
You can test the package by running the example app provided in the `example` folder. Ensure all features work as expected in different scenarios.

##  Contributing


Contributions are welcome! Please feel free to submit issues, fork the repository, and submit pull requests.

  

## License
This package is licensed under the MIT License.
  

```md

This README provides a comprehensive guide to installing, using, and contributing to your package, as well as including sections on features, parameters, examples, testing, contributing, and licensing. Adjust it according to your preferences and requirements!


```

  

## Maintainers

### [Achintya Singh](https://achiit.github.io/aboutachintya/#/)

  

