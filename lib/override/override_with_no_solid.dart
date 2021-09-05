import 'dart:math' as math;

abstract class Shape {
  double getArea();
}

class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  double getArea() {
    return radius * radius * math.pi;
  }
}

class Ellipse implements Shape {
  int radius1;
  int radius2;

  Ellipse(this.radius1, this.radius2);

  @override
  double getArea() {
    return radius1 * radius2 * math.pi;
  }
}

// if one day, there have a requirement that the application will need to support accurate radius,
// then you must change both derivative class.
// Circle and Ellipse is similar,
// so first thing we need to find out if they can abstract their common parts
