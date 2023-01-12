class Animal {
  int? id;
  String? name;
  String? diet;
  String? range;
  String? status;

  Animal({this.id, this.name, this.diet, this.range, this.status});

  Animal.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    diet = map['diet'] ?? 'Não informado';
    range = map['range'];
    status = map['status'] ?? 'Não informado';
  }

  @override
  String toString() => "Id: $id \nName: $name \nDiet: $diet \nRange: $range \nStatus: $status";
}

void main() {
  const mock = [
    {'id': 0, 'name': 'Alfredo', 'range': 'auauuuauuu'}, 
    {'id': 1, 'name': 'Rex', 'diet': 'Não', 'range': 'AUAUUU', 'status': 'vivo'}, 
    {'id': 2, 'name': 'Lia', 'range': 'miauu', 'status': 'gripado'}
 ];

  final List<Animal> animals =
      mock.map((animal) => Animal.fromMap(animal)).toList();

  for (var animal in animals) {
    print(animal);
  }
}
