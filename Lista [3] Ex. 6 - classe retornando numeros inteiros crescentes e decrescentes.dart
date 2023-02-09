class Number {
  
  int index = 0;
 
  List<int> showGrowingNumbers({required int value}) {
    List<int> list = [];
    for(index; index <= value; index++) {
      list.add(index);
    }
    return list;
  }
  
  List<int> showDecreasingNumbers({required int value}) {
    List<int> list= [];
    for(index; value >= 0; value--) {
      list.add(value);
    }
    return list;
  }
}

void main() {

  final number = Number();
  
  number.showGrowingNumbers(value: 10).map((index) => print(index)).toList();
  number.showDecreasingNumbers(value: 10).map((index) => print(index)).toList();
}