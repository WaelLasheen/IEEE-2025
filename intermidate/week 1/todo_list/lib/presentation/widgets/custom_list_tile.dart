import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/data/functions/dialogs/delete_task.dart';
import 'package:todo_list/data/models/task.dart';
import 'package:todo_list/presentation/provider/tasks_provider.dart';
import 'package:todo_list/utils/colors_manager.dart';

class CustomListTile extends StatelessWidget {
  final int index;
  final Task task;

  const CustomListTile({
    super.key,
    required this.index,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.isDone,
        onChanged: (_) {
          Provider.of<TasksProvider>(
            context,
            listen: false,
          ).toggleTaskCompletion(index);
        },
        activeColor: ColorsManager.green,
      ),
      title: Text(
        task.title,
        style: TextStyle(
          fontSize: 16,
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),

      subtitle: Text(
        task.description,
        style: TextStyle(
          color: ColorsManager.grey,
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_outline, color: ColorsManager.redAccent),
        onPressed: () => deleteTask(context, index),
      ),
    );
  }
}
