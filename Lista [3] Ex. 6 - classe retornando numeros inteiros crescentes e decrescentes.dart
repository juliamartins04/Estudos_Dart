class Number {
  
  int i = 0;
 
  List<int> showgrowingNumbers({required int value}) {
    List<int> list = [];
    for(i; i <= value; i++) {
      list.add(i);
    }
    return list;
  }
  
   List<int> showDecreasingNumbers({required int value}) {
    List<int> list= [];
    for(i; value >= 0; value--) {
      list.add(value);
    }
    return list;
  }
  
  @override
  String toString() => "";
}

void main() {
  
  final number = Number();
  
  number.showDecreasingNumbers(value: 10).map((index) => print(index)).toList();
  number.showgrowingNumbers(value: 10).map((index) => print(index)).toList();
}