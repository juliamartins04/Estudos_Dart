class Institution {
  
  String name;
  String alias;
  int id;
  String hostName;
  
  Institution({required this.name, required this.alias, required this.id, required this.hostName});
  
  factory Institution.fromMap(Map<String, dynamic> map) =>
    Institution (name: map['name'], alias: map['alias'], id: map['id'], hostName: map['hostName']); 
  
  @override
  String toString() => "Name: $name, Alias: $alias, Id: $id, Host Name: $hostName";
}

void main() { 

  const mock = [{'name': 'júlia', 'alias': 'SEI LA', 'id': 01, 'hostName': 'juju'}, {'name': 'Lais', 'alias': 'SEI LA', 'id': 02, 'hostName': 'lala'}, {'name': 'Ueslen', 'alias': 'SEI LA', 'id': 03, 'hostName': 'raj'}];
  
  final List<Institution> people = mock.map((element) => Institution.fromMap(element)).toList();

  for (var person in people) {
    print(person);
  }  
}