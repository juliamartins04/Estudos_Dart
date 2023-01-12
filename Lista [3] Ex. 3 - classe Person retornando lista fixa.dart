class Person {

  String showListAnimals() {
    List<String> namesOfAnimals = [
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
    return "$namesOfAnimals";
  }
}  

void main() {  

  final person = Person();
  print(person.showListAnimals());
}