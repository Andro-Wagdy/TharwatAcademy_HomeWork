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

import 'q2_class.dart';

void main() {
  List<Shape> shapes = [
    Circle(radius: 3),
    Circle(radius: 10),
    Rectangle(width: 5, height: 6),
    Triangle(base: 2, height: 8),
  ];
  double totalCost = 0;
  double totalArea = 0;
  for (var shape in shapes) {
     totalArea += shape.area();
  }
  print('total area = $totalArea');
  if (totalArea <= 50) {
    totalCost = 1.5 * totalArea;
  } else if (totalArea <= 150) {
    totalCost = 50 * 1.5 + (totalArea - 50) * 1.25;
  } else {
    totalCost = 50 * 1.5 + 100 * 1.25 + (totalArea - 150);
  }
  print('total cost = ${totalCost.toStringAsFixed(2)}');
}
