abstract class InterfaceOfMethods {

  String? showName(String? name);  
  String? showLastName(String? lastName);
}

class Person implements InterfaceOfMethods {
  
  String? name;
  String? lastName;
  
  @override
  String? showName(name) => name?.toUpperCase().substring(0, 2); 
  @override
  String? showLastName(lastName) => lastName?.toUpperCase().substring(0, 1); 
  @override
  String toString() => "Code: ${showName(name)}${showLastName(lastName)}";
}


void main() {
  final person = Person();
  
  person.name = "Júlia";
  person.lastName = "Martins";
  print(person);
}