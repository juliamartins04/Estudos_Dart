void main() {

  void splitNumber(String numberOrString) {
    List<String> splitArray = numberOrString.split('');
    List<String> sublist = splitArray.sublist(0, 10);
    print(sublist);
  }

  splitNumber("123456789952");
}