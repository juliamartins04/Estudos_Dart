class Person {
  
  String name;  
  Person({required this.name});
  
  void showNameRepeated() {   
    for (int i = 0; i < 20; i++) {
      print(name);
    }
  } 
}

void main() {  

  final person = Person(name: "ju");
  person.showNameRepeated(); 
}