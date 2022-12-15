class Number {
  
  double? valueOne;
  double? valueTwo;
  double? valueThree;
  
  String? returnNumbers() {
    if (valueOne != null && valueTwo != null && valueThree != null) {
        if (valueOne! < valueTwo! && valueTwo! < valueThree!) {
            return '$valueOne $valueTwo $valueThree';
        } else if (valueTwo! < valueThree! && valueThree! < valueOne!) {
            return '$valueTwo $valueThree $valueOne';
        } else if (valueTwo! < valueOne! && valueOne! < valueThree!) {
            return '$valueTwo $valueOne $valueThree';
        } else { 
            return '$valueThree $valueOne $valueTwo';
        }
     } 
      return null;
  }  
}

void main() {

  final number = Number(); 
  number.valueOne = 3;
  number.valueTwo = 1;
  number.valueThree = 2;
  
//   // Testes
//   number.valueOne = 0;
//   number.valueTwo = 1;
//   number.valueThree = 2;
//   //Testes
//   number.valueOne = 38;
//   number.valueTwo = 15;
//   number.valueThree = 23;
//   print(number.returnNumbers());
}
