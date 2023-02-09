abstract class IPerson {

  String showClientName(String name, String lastName);  
}

class Person implements IPerson {
  
  String name;
  String lastName;
  
  Person({required this.name, required this.lastName});
  
  @override
  String showClientName(name, lastName) => "${name.toUpperCase().substring(0, 2)}${lastName.toUpperCase().substring(0, 1)}"; 
  @override
  String toString() => "Code: ${showClientName(name, lastName)}";
}

void main() {
  final person = Person(name: "Júlia", lastName: "Martins");
  print(person);
}