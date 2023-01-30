
mixin RandomNumber {
  var createRandomNumbers = Random();
  List<int> generateListRandomNumbers({required int value}) => List.generate(value, (index) => createRandomNumbers.nextInt(1000));
}

class Number with RandomNumber {

  int value;
  int i = 0;
  List<int>? listOfRandomNumbers;
  
  Number({required this.value, this.listOfRandomNumbers});
  
  bool isListNull() => listOfRandomNumbers == null;
  
  void inflateListOfRandomNumbers() => listOfRandomNumbers = generateListRandomNumbers(value: value);
  
  List<int> createEvenNumbers({required List<int> listOfRandomNumbers}) => listOfRandomNumbers.where((value) => value % 2 == 0).toList();
  List<int> createOddNumbers({required List<int> listOfRandomNumbers}) => listOfRandomNumbers.where((value) => value % 2 != 0).toList();
  
  void showEvenNumbersAndOddNumbers() {
    if(isListNull()) {
      print("Não é uma lista válida");
    } else {
      print("Base list: $listOfRandomNumbers");
      print("Even Numers: ${createEvenNumbers(listOfRandomNumbers: listOfRandomNumbers!)}");
      print("Odd Numbers: ${createOddNumbers(listOfRandomNumbers: listOfRandomNumbers!)}");
    }
  }
  
  @override
  String toString() => "Value: $value";
}

void main() {  
 
  final number = Number(value: 10);  
  number.inflateListOfRandomNumbers();
  number.showEvenNumbersAndOddNumbers();
//   print(number);
}