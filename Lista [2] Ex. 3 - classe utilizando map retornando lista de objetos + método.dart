class Person {
  String? name;
  int? age;
  double? weight;
  double? height;
  
  Person({required this.name});

  Person.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    age = map['age'];
    weight = map['weight'];
    height = map['height'];
  }

  bool validateAge() => age != null && age! > 0;

  String? verifyAge() {
    if (validateAge()) {
      if (age! >= 18) {
        return "Of legal age";
      } else {
        return "Is not of age";
      }
    }
    return null;
  }

  @override
  String toString() => "Name: $name \nAge: $age \nIs of legal age? ${verifyAge()} \nWeight: $weight \nHeight: $height";
}

void main() {
  const mock = [
    {"name": "Júlia", "age": 18, "weight": 1.6, "height": 55},
    {"name": "Raj", "age": 25, "weight": 1.7, "height": 60},
    {"name": "Laís", "age": 25, "weight": 1.6, "height": 56}
  ];

//   mapear (elementos) da lista mock
//   mock.map(element)
//
//   => envia para o construtor de Person fazer esse mapeamento e
//   devolver tudo em lista .toList()
  final List<Person> people =
      mock.map((element) => Person.fromMap(element)).toList();

//   chama o for para imprimir a lista de person
  for (var person in people) {
    print(person);
  }
}
