class Animal {
  
  String name;
  
  Animal({required this.name});
  
  factory Animal.fromMap(Map<String, dynamic> map) =>
    Animal(  
      name: map['name']
    );
  
  Map<String, dynamic> toMap() => {'name': name };

  @override
  String toString() => "Animal: ${toMap()}";
}
void main() {  

  const mock = [{'name': 'Rex'}, {'name': 'Lilica'}, {'name': 'Kiko'}, {'name': 'Rex'}, {'name': 'Lilica'}, {'name': 'Kiko'},  {'name': 'Kiko'}, {'name': 'Rex'}, {'name': 'Lilica'}, {'name': 'Kiko'}];
      
  final List<Animal> animals = mock.map((element) => Animal.fromMap(element)).toList();
  for(var animal in animals) {
    print(animal);  
  }
} 