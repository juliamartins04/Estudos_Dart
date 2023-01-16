class Animal {
  int id;
  String name;
  String? diet;
  String range;
  String? status;

  Animal({required this.id, required this.name, this.diet, required this.range, required this.status});

  factory Animal.fromMap(Map<String, dynamic> map) =>   
    Animal (
      id: map['id'],
      name: map['name'],
      diet: map['diet'] ?? 'Não informado',
      range: map['range'],
      status: map['status'] ?? 'Não informado'
    );
  
  @override
  String toString() => "Id: $id \nName: $name \nDiet: $diet \nRange: $range \nStatus: $status";
}

void main() {
  const mock = [
    {'id': 0, 'name': 'Alfredo', 'range': 'auauuuauuu'}, 
    {'id': 1, 'name': 'Rex', 'diet': 'Não', 'range': 'AUAUUU', 'status': 'vivo'}, 
    {'id': 2, 'name': 'Lia', 'range': 'miauu', 'status': 'gripado'}
  ];
  
//   Puxando apenas um objeto do fromMap, da posição "0" 
//   final animal = Animal.fromMap(mock[0]);
//   print(animal);
  
  final List<Animal> animals =
      mock.map((animal) => Animal.fromMap(animal)).toList();
  
  for (var animal in animals) {
    print(animal);
  }
}