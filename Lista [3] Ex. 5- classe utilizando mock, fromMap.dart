class Product {
  
  int? id;
  String? description;
  double? value;
  
  Product.fromMap(Map<String, dynamic> map) {
    id = map['id'] ?? 0;
    description = map['description'] ?? '';
    value = map['value'] ?? 0;
  }
  
  @override
  String toString() => "id: $id \nDescription : $description \nValue $value"; 
}

void main() {

  const mock = [
    {'id': 1, 'description': 'tenis', 'value': 79.90},
    {'id': 2, 'description': 'calça', 'value': 69.90},
    {'id': 3, 'description': 'bola', 'value': 199.90},
    {'id': 4, 'description': 'fone', 'value': 279.90},
    {'id': 5, 'description': 'celular', 'value': 999.90},   
  ];
  
  final List<Product> product = mock.map((element) => Product.fromMap(element)).toList();

  for (var product in product) {
    print(product);
  }
}