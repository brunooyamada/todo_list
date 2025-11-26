class Todo {
  Todo({required this.title, required this.dateTime, required this.checked});

  Todo.fromJson(Map<String, dynamic> json)
    : title = json['title'],
      dateTime = DateTime.parse(json['datetime']),
      checked = json['checked'] ?? false;

  String title;
  DateTime dateTime;
  bool checked;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'datetime': dateTime.toIso8601String(),
      'checked': checked,
    };
  }
}
