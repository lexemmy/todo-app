class Task{
  String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    name: json['name'],
    isDone: json['isDone']
  );

  Map<String, dynamic> toJson() => {'name': name, 'isDone': isDone};
}