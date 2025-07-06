import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/data/models/task.dart';
import 'package:todo_list/presentation/provider/tasks_provider.dart';
import 'package:todo_list/utils/colors_manager.dart';
import 'package:todo_list/presentation/widgets/custom_list_tile.dart';

class TaskCard extends StatelessWidget {
  final int index;
  final Task task;
  const TaskCard({super.key, required this.index, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.greyWithShade300),
      ),
      child: Selector<TasksProvider, bool>(
        selector: (_, TasksProvider provider) => provider.tasks[index].isDone,
        builder: (_, _, _) {
          return CustomListTile(index: index, task: task);
        },
      ),
    );
  }
}
