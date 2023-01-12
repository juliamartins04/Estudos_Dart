class Person {
  String? name;
  
  Person({this.name});
  
  Person.fromMap(Map<String, String> map) {
    name = map['name'];
  }
  
  @override
  String toString() => "Name: $name";
}

void main() {
  
  const mock = [{"name": "Júlia"}, {"name": "Raj"}, {"name": "Laís"}];
  
//   testes
//   const mock = [{"name": "Wellinton"}, {"name": "Thiago"}, {"name": "Giovane"}];
  
//   mapear (elementos) da lista mock 
//   mock.map(element)
//   
//   => envia para o construtor de Person fazer esse mapeamento e 
//   devolver tudo em lista .toList()  
  final List<Person> people = mock.map((element) => Person.fromMap(element)).toList();

//   chama o for para imprimir a lista de person
  for (var person in people) {
    print(person);
  }
}