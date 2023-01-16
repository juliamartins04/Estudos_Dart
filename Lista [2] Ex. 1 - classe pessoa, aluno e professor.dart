abstract class Person {
  
  int code;
  String name;
  String lastName;

  Person({required this.code, required this.name, required this.lastName});
  
  String transformToLowerCase() => "${name.toLowerCase()} ${lastName.toLowerCase()}"; 
  String transformToUpperCase() => "${name.toUpperCase()} ${lastName.toUpperCase()}";
  
  @override
  String toString() => "Code: $code \nName: $name \nLast name: $lastName \nName to lower case: ${transformToLowerCase()} \nName to upper case: ${transformToUpperCase()}"; 
}

class Student extends Person {
 
  double grade1;
  double grade2;
  
  Student({required int code, required String name, required String lastName, required this.grade1, required this.grade2}): super(code: code, name: name, lastName: lastName);
  // Usar GET - palavras genéricas

  double? getAverage() => (grade1 + grade2) / 2;

  @override
  String toString() => "Code: $code \nName: $name \nLast name: $lastName \nNote 1: $grade1 \nNota 2: $grade2 \nMedia: ${getAverage()}";   
}

class Teacher extends Person {  
  
  double valueHour;
  double numberOfWorkedHours;
  
  Teacher({required int code, required String name, required String lastName, required this.valueHour, required this.numberOfWorkedHours}): super(code: code, name: name, lastName: lastName);

  double? getWage() => valueHour * numberOfWorkedHours;
  
  @override
  String toString() => "Name: $name \nLast name: $lastName \nCode: $code \nValue Hour: $valueHour \nNumber of worked hours: $numberOfWorkedHours \nWage: R\$${getWage()}";
}

void main() {

     final student = Student(code: 1, grade1: 7, grade2: 8, name: "Júlia", lastName: "Martins");
     final teacher = Teacher(valueHour: 20, numberOfWorkedHours: 30, code: 1, name: "julia", lastName: "martins");
  
//  Testes 
//   final student = Student(note1: 0, note2: 100, code: 1000, name: "Júlia", lastName: "Martins");
//   final teacher = Teacher(valueHour: 150.39, numberOfWorkedHours: 6, code: 1, name: "Júlia", lastName: "Martins");
 
//   final student = Student(note1: null, note2: null, code: 1, name: "Júlia", lastName: "Martins");
//   final teacher = Teacher(valueHour: 20.1, numberOfWorkedHours: 6, code: 1, name: "Júlia", lastName: "Martins");
 
//   print(student.transformToLowerCase());
//   print(student.transformToUpperCase()); 
//   print(teacher.transformToLowerCase());
//   print(teacher.transformToUpperCase());
  
  print("Student\n");
  print(student);
  print("\nTeacher\n");
  print(teacher);   
}