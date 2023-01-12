class Institution {
  
  String? name;
  String? alias;
  int? id;
  String? hostName;
  
  Institution({this.name, this.alias, this.id, this.hostName});
  
  factory Institution.fromMap(Map<String, dynamic> map) =>
    Institution (    
      name: map['name'],
      alias: map['alias'],
      id: map['id'],
      hostName: map['hostName']
    ); 
  
  @override
  String toString() => "Name: $name \nAlias: $alias \nId: $id \nHost Name: $hostName";
}

void main() { 

  const mock = {'name': 'júlia', 'alias': 'SEI LA', 'id': 01, 'hostName': 'juju'};
  
  final institution = Institution.fromMap(mock);
  print(institution);
}