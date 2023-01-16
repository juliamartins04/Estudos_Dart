class MapObject {
  String id;
  String title;
  String description;
  String startDate;
  String expectedEndDate;
  int amountPeople;

  MapObject(
      {required this.id,
      required this.title,
      required this.description,
      required this.startDate,
      required this.expectedEndDate,
      required this.amountPeople});

  factory MapObject.fromMap(Map<String, dynamic> map) =>
    MapObject (
    id: map['id'],
    title: map['title'],
    description: map['description'],
    startDate: map['start_date'],
    expectedEndDate: map['expected_end_date'],
    amountPeople: map['amount_people']
    );

  @override
  String toString() => "Id: $id \nTitle: $title \nDescription: $description \nStart Date: $startDate \nExpected end date: $expectedEndDate \nAmount people: $amountPeople";
}

void main() {
  const mock = [
    {
      "id": "824y82",
      "title": "Realizar exercícios",
      "description": "Realizar atividades de Dart",
      "start_date": "13/12/2022 14:00h",
      "expected_end_date": "15/12/2022 17:00h",
      "amount_people": 1
    },
    {
      "id": "743cs0",
      "title": "Revisar exercícios",
      "description": "Revisar exerícios de dart",
      "start_date": "15/12/2022 11:00h",
      "expected_end_date": "16/12/2022 16:00h",
      "amount_people": 1
    }
  ];

  final List<MapObject> mapObjects =
      mock.map((task) => MapObject.fromMap(task)).toList();

  for (var mapObject in mapObjects) {
    print(mapObject);
  }
}
