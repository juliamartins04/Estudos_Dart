void main() {

  void splitNumber(String numberOrString) {
    List<String> splitArray = numberOrString.split('');
    List<String> sublist = splitArray.sublist(0, 10);
    List<int> mapSublist = sublist.map((index) => int.parse(index)).toList();
    int sum = mapSublist.reduce((value, element) => value + element);
    print(sum);
  }

  splitNumber("123456789952");
}