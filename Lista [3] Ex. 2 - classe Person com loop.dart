class Person {
  
  String name;  
  Person({required this.name});
  
  void showNameRepeatedTwentyTimes() {   
    for (int i = 0; i < 20; i++) {
      print(name);
    }
  } 
}

void main() {  

  final person = Person(name: "ju");
  person.showNameRepeatedTwentyTimes(); 
}