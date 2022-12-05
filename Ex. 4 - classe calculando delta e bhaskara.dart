import 'dart:math' as math;

class Calculate {
    
  double? valueA;
  double? valueB;
  double? valueC;
  
  List<double> listResults() {
    double delta;
    if (verifyNumbers()) {
        delta = calculateDelta();
      if ( delta > 0 ) {
        List<double> results= [];
        results.add(delta);
         results.add(calculateX1Positive(delta));
         results.add(calculateX2Negative(delta));
        return results;
       } else {
        return [];
      }
    }    
    return [];
  } 
    
  bool verifyNumbers() {
    return valueA != 0 && valueA != null && valueB != null && valueC != null;
  }
    
  double calculateDelta() {
    return math.pow(valueB!, 2) - ((4 * valueA!) * valueC!);  
  }

  double calculateX1Positive(delta) {
    return (-valueB! + math.sqrt(delta)) / (2 * valueA!);
  }
  
  double calculateX2Negative(delta) {
    return (-valueB! - math.sqrt(delta)) / (2 * valueA!);
  }  
}
   
void main() {
  
  final calculate = Calculate();
  
  calculate.valueA = 2;
  calculate.valueB = 5;
  calculate.valueC = 3;
  print(calculate.listResults());

  // Testes
//   calculate.valueA = 0;
//   calculate.valueB = 0;
//   calculate.valueC = 0;
  
//   calculate.valueA = 80;
//   calculate.valueB = 3624;
//   calculate.valueC = 22222;
}