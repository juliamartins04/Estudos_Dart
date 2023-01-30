class Person {

  String showListPersonNames() {
    List<String> listPersonNames = [
    "Júlia",
    "Raj",
    "Laís",
    "Thiago",
    "Welinton",
    "Giovane",
    "Le",
    "Andressa",
    "Ueslen",
    "Reus",
    ]; 
    return "$listPersonNames";
  }
}  

void main() {  

  final person = Person();
  print(person.showListPersonNames());
}