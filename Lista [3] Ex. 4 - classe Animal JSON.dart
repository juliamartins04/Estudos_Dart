class Animal {
  
  String? name;
  
  Animal({this.name});
  
  Animal.fromMap(Map<String, String> map) {
    name = map['name'];
  }

  @override
  String toString() => "Name: $name";
}
void main() {  

  const mock = [{'name': 'Rex'}, {'name': 'Lilica'}, {'name': 'Kiko'}];
      
  final List<Animal> product = mock.map((element) => Animal.fromMap(element)).toList();
  print(product);
} 