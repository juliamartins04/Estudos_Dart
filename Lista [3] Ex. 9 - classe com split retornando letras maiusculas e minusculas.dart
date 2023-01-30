class Person {
   
  int index = 0; 
//   String test() {
//     for(i; i < str.length; i++) {
//       print(split[i].toLowerCase());
//     }
//     return "";
//   } 
  String convertLettersUppercaseAndLowercase({required String element}) => index % 2 == 0 ? element.toLowerCase() : element.toUpperCase();
   
  String showResults({required String name}) {
    List<String> list = [];
    for(index; index < name.length; index++) {
        list.add(convertLettersUppercaseAndLowercase(element: name[index]));
    }
    String result = "";
    list.map((element) => result += element).toList();
    return result;
  } 
}

void main() {
  
  final person = Person(); 
  print(person.showResults(name: "welinton"));
}