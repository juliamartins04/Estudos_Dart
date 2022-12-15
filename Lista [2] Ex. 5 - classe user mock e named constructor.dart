class User {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  User({this.userId, this.id, this.title, this.completed});

  User.fromMap(Map<dynamic, dynamic> map) {
    userId = map['userId'] ?? '';
    id = map['id'] ?? '';
    title = map['title'] ?? '';
    completed = map['completed'] ?? '';
  }

  @override
  String toString() {
    return "User Id: $userId \nId: $id \nTitle: $title \nCompleted: $completed";
  }
}

void main() {
  const mock = [
    {"userId": 1, "id": 1, "title": "Júlia Martins", "completed": true},
    {"userId": 2, "id": 2, "title": "Raj Pagani", "completed": false}, 
    {"userId": 3, "id": 3, "title": "Laís Silva", "completed": true}
  ];
  
  final List<User> user = mock.map((element) => User.fromMap(element)).toList();

  for (var user in user) {
    print(user);
  }
}
