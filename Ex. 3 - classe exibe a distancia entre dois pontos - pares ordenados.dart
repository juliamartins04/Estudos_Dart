import 'dart:math' as math;

class Calculate {
  
  double? x1;
  double? x2;
  double? y1;
  double? y2;    
  
  double? calculateResult(x1, x2, y1, y2) => testIsNumber(x1, x2, y1, y2) || testNull(x1, x2, y1, y2) ? null : math.sqrt((math.pow((x1 - x2), 2)) + (math.pow((y1 - y2), 2))); 

  bool testIsNumber(x1, x2, y1, y2) => x1.isNaN || x2.isNaN || y1.isNaN || y2.isNaN;
  bool testNull(x1, x2, y1, y2) => x1 == null || x2 == null || y1 == null || y2 == null;
}
void main() {
  final calculate = Calculate();
  print(calculate.calculateResult(3, 0, 3, 4));
  
//  Testes  
//   print(calculate.calculateResult(3, 4, 5, 6));
//   print(calculate.calculateResult(88, 99, 88, 99));
//   print(calculate.calculateResult(11, 21, 31, 41));


}
