import 'dart:math' as math;

class Square {
  int width;

  Square(this.width);
}

class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height);
}

class Circle {
  int radius;

  Circle(this.radius);
}

class AreaCalculator {
  double total = 0;

  double getTotalArea(List<dynamic> shapes) {
    shapes.forEach((element) {
      if (element is Square) {
        total += math.pow(element.width, 2);
      }
      if (element is Rectangle) {
        total += element.height * element.width;
      }
      if (element is Circle) {
        total += math.pow(element.radius, 2) * math.pi;
      }
    });
    return total;
  }
}
