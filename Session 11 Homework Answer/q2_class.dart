/*
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.
*/

class Shape {
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double _radius = 1;
  Circle({required double radius}) : super() {
    if (radius <= 0) {
      print('Invalid radius');
    } else {
      _radius = radius;
    }
  }
  @override
  double area() {
    return 3.14 * _radius * _radius;
  }
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;
  Rectangle({required double width, required double height}) : super() {
    if (width <= 0 || height <= 0) {
      print('Invalid width/height');
    } else {
      _height = height;
      _width = width;
    }
  }
  @override
  double area() {
    return _height *  _width;
  }
}

class Triangle extends Shape {
  double _base = 1;
  double _height = 1;
  Triangle({required double base,required double height}) : super() {
    if (base <= 0 || height <= 0) {
      print('Invalid base/height');
    } else {
      _height = height;
      _base = base;
    }
  }
  @override
  double area() {
    return 0.5 * _base * _height;
  }
}
