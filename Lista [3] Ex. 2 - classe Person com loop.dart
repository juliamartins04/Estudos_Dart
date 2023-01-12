class Person {
  
  String? name;  
  Person({this.name});
  
   void method() {   
     for (int i = 0; i < 20; i++) {
          print('Júlia');
     }
   } 
}

void main() {  

  final person = Person();
  person.method(); 
}