void main() {
  
  void multiplyFirstTenDigitsByTwo(String numberOrString) {
    List<String> splitArray = numberOrString.split('');
    List<int> sublist = splitArray.sublist(8, 10).map((index) => int.parse(index)).toList();
    int numberReduce = sublist.reduce((value, element) => value + element);
    print(numberReduce);
  }
  
  multiplyFirstTenDigitsByTwo("1234567890123");
}