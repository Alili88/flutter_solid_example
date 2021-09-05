import 'dart:math' as math;

class Square implements Shape {
  int width;

  Square(this.width);

  @override
  double getArea() {
    return math.pow(this.width, 2) as double;
  }
}

class Rectangle implements Shape {
  int width;
  int height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height as double;
  }
}

class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  double getArea() {
    return math.pow(this.radius, 2) * math.pi;
  }
}

abstract class Shape {
  double getArea();
}

class AreaCalculator {
  double total = 0;

  double getTotalArea(List<Shape> shapes) {
    shapes.forEach((element) {
      total += element.getArea();
    });
    return total;
  }
}
