mixin PersonName {    
  String? showName(name) => name == null ? "BAD": "${name.toUpperCase()}"; 
}

class Person with PersonName {  
  String? name;  
  Person(this.name);

  @override
  String toString() => "Name: $name \nMetod: ${showName(name)}";
}

void main() {
  final person = Person("Júlia");
  print(person);

}
