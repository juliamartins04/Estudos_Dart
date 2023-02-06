void main() {
  
  void multiplyFirstTenDigitsByTwo(String numberOrString) {
    List<String> splitArray = numberOrString.split('');
    List<String> sublist = splitArray.sublist(8, 10);
    print(sublist);
  }
  
  multiplyFirstTenDigitsByTwo("1234567890123");
}