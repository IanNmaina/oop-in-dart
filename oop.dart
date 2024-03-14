import 'dart:io';

// Define an interface
abstract class Shape {
  double calculateArea();
}

// Implement interface with a class
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  // Method overriding
  @override
  String toString() {
    return 'Rectangle - Width: $width, Height: $height, Area: ${calculateArea()}';
  }
}

// Another class that extends Rectangle
class Square extends Rectangle {
  Square(double side) : super(side, side);

  @override
  String toString() {
    return 'Square - Side: $width, Area: ${calculateArea()}';
  }
}

// Method to read data from a file and initialize an object
Shape readShapeFromFile(String filename) {
  final file = File(filename);
  final lines = file.readAsLinesSync();

  final values = lines.map(double.parse).toList();

  if (values.length == 2) {
    return Rectangle(values[0], values[1]);
  } else if (values.length == 1) {
    return Square(values[0]);
  } else {
    throw ArgumentError('Invalid data in file');
  }
}

void main() {
  try {
    final shape = readShapeFromFile('shape_data.txt');
    print('Shape read from file: $shape');

    // Demonstrate loop
    for (int i = 0; i < 3; i++) {
      print('Loop iteration $i');
    }
  } catch (e) {
    print('Error reading shape from file: $e');
  }
}
