void main() {
  var circle = Circle(5);
  print('Area of circle: ${circle.calculateArea()}');
  var square = Square(5);
  print('Area of square: ${square.calculateArea()}');
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double calculateArea() {
    return side * side;
  }
}
