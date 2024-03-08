void main() {
  var rectangle = Rectangle(10, 5);
  print('Area: ${rectangle.getArea()}');
  print('Perimeter: ${rectangle.getPerimeter()}');
}

class Rectangle {
  double length;
  double width;
  Rectangle(this.length, this.width);
  double getArea() {
    return length * width;
  }

  double getPerimeter() {
    return 2 * (length + width);
  }
}
