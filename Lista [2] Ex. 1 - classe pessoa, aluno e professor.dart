abstract class Person {
  
  int? code;
  String? name;
  String? lastName;

  Person(this.code, this.name, this.lastName);
  
  String? transformToLowerCase() => "${name?.toLowerCase()} ${lastName?.toLowerCase()}"; 
  String? transformToUpperCase() => "${name?.toUpperCase()} ${lastName?.toUpperCase()}";
  
  @override
  String toString() {
    return "Code: $code \nName: $name \nLast name: $lastName \nName to lower case: ${transformToLowerCase()} \nName to upper case: ${transformToUpperCase()}";
  }  
}

class Student extends Person {
 
  double? note1;
  double? note2;
  
  Student({this.note1, this.note2, int? code, String? name, String? lastName}): super(code, name, lastName);
  
  double? calculateMedia() => note1 == null || note2 == null ? null : (note1! + note2!) / 2;

  @override
  String toString() {
    return "Code: $code \nName: $name \nLast name: $lastName \nNote 1: $note1 \nNota 2: $note2 \nMedia: ${calculateMedia()}";  
  }  
}

class Teacher extends Person {  
  
  double? valueHour;
  double? numberOfWorkedHours;
  
  Teacher({this.valueHour, this.numberOfWorkedHours, int? code, String? name, String? lastName}): super(code, name, lastName);

  double? calculateWage() => valueHour == null || numberOfWorkedHours == null ? null : valueHour! * numberOfWorkedHours!;
  
  @override
  String toString() {
    return "Name: $name \nLast name: $lastName \nCode: $code \nValue Hour: $valueHour \nNumber of worked hours: $numberOfWorkedHours \nWage: R\$${calculateWage()}";
  }
}

void main() {

  final student = Student(note1: 10, note2: 5, code: 1, name: "ju", lastName: "martins");
  final teacher = Teacher(valueHour: 20, numberOfWorkedHours: 6, code: 1, name: "Júlia", lastName: "Martins");

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