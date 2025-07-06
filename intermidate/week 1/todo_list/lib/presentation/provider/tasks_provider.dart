import 'package:flutter/material.dart';
import 'package:todo_list/data/database/database_helper.dart';
import 'package:todo_list/data/models/task.dart';

class TasksProvider with ChangeNotifier {
  List<Task> tasks = [];

  void fetchTasks() async {
    tasks = await DatabaseHelper().fetchAll();
    notifyListeners();
  }

  void addTask(Task task) async{
    int id = await DatabaseHelper().insertTask(task);
    task.id = id;
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index) async{
    await DatabaseHelper().deleteTask(tasks[index].id!);
    tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTaskCompletion(int index) async{
    tasks[index].isDone = !tasks[index].isDone;
    await DatabaseHelper().updateTask(tasks[index]);
    notifyListeners();
  }
}
