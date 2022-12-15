import 'dart:math' as math;

class Circle {
  
  double? calculateArea(double radius, {double pi = 3.141592}) 
    => radius.isNaN ? null : pi * math.pow(r, 2); 
  double? calculatePerimeter(double radius, {double pi = 3.141592}) 
    => radius.isNaN ? null : 2 * pi * r;
}

void main() {
  
  final circle = Circle();
  
  print(circle.calculatePerimeter(22));
  print(circle.calculateArea(22));
  
// Testes
//   print(circle.calculatePerimeter(4));
//   print(circle.calculateArea(56));
//   print(circle.calculatePerimeter(8));
//   print(circle.calculateArea(0));
}
