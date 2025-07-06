import 'package:todo_list/utils/consts/database_consts.dart';

class Task {
  int? id;
  final String title;
  String description;
  bool isDone;

  Task({
    this.id,
    required this.title,
    required this.description,
    this.isDone = false,  // default value is false
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    id: json[databaseColumnId],
    title: json[databaseColumnTitle],
    description: json[databaseColumnDescription],
    isDone: json[databaseColumnIsDone]==1,
  );

  Map<String, dynamic> toJson() =>{
      databaseColumnTitle: title,
      databaseColumnDescription: description,
      databaseColumnIsDone: isDone?1:0,
    };
}
