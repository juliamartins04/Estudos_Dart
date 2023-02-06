void main() {
  
  void multiplyFirstTenDigitsByTwo(String numberOrString) {
    List<String> splitArray = numberOrString.split('');
    List<String> sublist = splitArray.sublist(0, 10);
    List<int> numbersMultiplyed = [];
    List<int> mapSublist = sublist.map((index) => int.parse(index)).toList();
    for (int i = 0; i < 10; i++) {
      int product = mapSublist[i] * 2;
      numbersMultiplyed.add(product);
    }
    print(numbersMultiplyed);
  }
  
  multiplyFirstTenDigitsByTwo("1234567890123");
}