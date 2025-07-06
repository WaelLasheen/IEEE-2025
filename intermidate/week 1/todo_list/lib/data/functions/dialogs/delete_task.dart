import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/presentation/provider/tasks_provider.dart';

void deleteTask(BuildContext context, int index) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text(
        "Delete!",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: const Text("Are you sure want to delete this task?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            Provider.of<TasksProvider>(context, listen: false).deleteTask(index);
            Navigator.pop(context);
          },
          child: const Text("Yes", style: TextStyle(color: Colors.red)),
        ),
      ],
    ),
  );
}
