class Person {
   
  int index = 0;

  String convertLettersUppercaseAndLowercase({required String caracter}) => index % 2 == 0 ? caracter.toLowerCase() : caracter.toUpperCase();
   
  String showNumbersConverter({required String name}) {
    List<String> list = [];
    for(index; index < name.length; index++) {
        list.add(convertLettersUppercaseAndLowercase(caracter: name[index]));
    }
    String result = "";
    list.map((caracter) => result += caracter).toList();
    return result;
  } 
}

void main() {
  
  final person = Person(); 
  print(person.showNumbersConverter(name: "welinton"));
}