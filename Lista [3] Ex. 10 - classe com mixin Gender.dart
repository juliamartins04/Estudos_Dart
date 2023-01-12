mixin Gender {
  
  String checkGender(gender) {
    if (gender == 1) {
      return "Feminino";
    } else if (gender == 2) {
      return "Masculino";
    } 
    return "Outros";
  }
}

class Person with Gender{
  
  String? name;
  int? id;
  int? gender;
  
  Person({this.name, this.id, this.gender});
  
  factory Person.fromMap(Map<String, dynamic> map) =>
    Person (
      name: map["name"],
      id: map["id"],
      gender: map["gender"]
    ); 
  
  @override
  String toString() => "Name: $name \nId: $id \nGender: ${checkGender(gender)}";
}

void main() {  
  
  const mock = {'name': 'júlia', 'alias': 'SEI LA', 'id': 01, 'hostName': 'juju'};

//   final person = Person(name: "Julia", id: 02, gender: 1);
    final person = Person.fromMap(mock);

  print(person);  
} 