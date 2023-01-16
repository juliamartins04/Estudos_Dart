class User {
  int userId;
  int id;
  String title;
  bool completed;

  User({required this.userId, required this.id, required this.title, required this.completed});

  factory User.fromMap(Map<dynamic, dynamic> map) =>
    User (
    userId: map['userId'],
    id: map['id'],
    title: map['title'],
    completed: map['completed']
    );

  @override
  String toString() => "User Id: $userId \nId: $id \nTitle: $title \nCompleted: $completed";
}

void main() {
  const mock = [
    {"userId": 1, "id": 1, "title": "Júlia Martins", "completed": true},
    {"userId": 2, "id": 2, "title": "Raj Pagani", "completed": false}, 
    {"userId": 3, "id": 3, "title": "Laís Silva", "completed": true}
  ];
  
  final List<User> users = mock.map((user) => User.fromMap(user)).toList();

  for (var user in users) {
    print(user);
  }
}
