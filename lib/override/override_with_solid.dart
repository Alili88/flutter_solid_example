import 'dart:math' as math;

abstract class Shape {
  double getArea();
}

class RoundShape implements Shape {
  double radius1;
  double radius2;

  RoundShape(this.radius1, this.radius2);

  @override
  double getArea() {
    return radius1 * radius2 * math.pi;
  }
}

class Circle extends RoundShape {
  Circle(double radius) : super(radius, radius);

  factory Circle.from(double radius) {
    return Circle(radius);
  }

  void setRadius(double radius) {
    this.radius1 = this.radius2 = radius;
  }
}

class Ellipse extends RoundShape {
  Ellipse(double radius1, double radius2) : super(radius1, radius2);

  factory Ellipse.from(double radius1, double radius2) {
    return Ellipse(radius1, radius2);
  }

  void setRadius(double radius1, double radius2) {
    this.radius1 = radius1;
    this.radius2 = radius2;
  }
}
