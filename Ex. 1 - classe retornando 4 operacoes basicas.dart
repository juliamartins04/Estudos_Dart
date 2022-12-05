class Number {
  
  double? numberOne;
  double? numberTwo; 
  
  bool verify() {
    return numberOne != null && numberTwo != null;
  }
  
  double? sum() => verify() ? numberOne! + numberTwo! : null;
  double? subtract() => verify() ? numberOne! - numberTwo! : null;
  double? multiply() => verify() ? numberOne! * numberTwo! : null;  
  double? divide() {
    if (verify()) {
      if (numberOne! > 0 && numberTwo! > 0) {
        return numberOne! / numberTwo!;
      } 
      return null;
    }
}
  
    String showResults() {
      return "Sum: ${sum()} \nSubtract: ${subtract()} \nMultiply: ${multiply()} \nDivide: ${divide()}";
  }
  
}  

void main() {
    
  final number = Number();  
  
// Testes
//   number.numberOne = 1;
//   number.numberTwo = -5;   
//   number.numberOne = 0;
//   number.numberTwo = 6;
    
  number.numberOne = 2;
  number.numberTwo = 2;
  print(number.showResults());
}