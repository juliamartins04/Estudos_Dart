class Product {
  
  int id;
  String description;
  double value;
  
  Product({required this.id, required this.description, required this.value});
  
  factory Product.fromMap(Map<String, dynamic> map) => 
    Product(id: map['id'], description: map['description'], value: map['value']);
  
  Map<String, dynamic> toMap() => {'id': id, 'description': description, 'value': value};
  
  @override
  String toString() => "Object: ${toMap()}"; 
}

void main() {

  const mock = [
    {'id': 1, 'description': 'shirt', 'value': 79.90},
    {'id': 2, 'description': 'pants', 'value': 69.90},
    {'id': 3, 'description': 'ball', 'value': 199.90},
    {'id': 4, 'description': 'book', 'value': 279.90},
    {'id': 5, 'description': 'phone', 'value': 999.90},   
  ];
  //   const mock = {'object1': [{'name': 'Rex'}, {'name': 'Lilica'}, {'name': 'Kiko'}]};

  final List<Product> products = mock.map((element) => Product.fromMap(element)).toList();

  for (var product in products) {
    print(product);
  }  
}