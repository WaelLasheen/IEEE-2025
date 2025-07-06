import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/data/models/task.dart';
import 'package:todo_list/presentation/screens/add_task_screen.dart';
import 'package:todo_list/presentation/provider/tasks_provider.dart';
import 'package:todo_list/utils/colors_manager.dart';
import 'package:todo_list/presentation/widgets/custom_appbar.dart';
import 'package:todo_list/presentation/widgets/task_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.grey200,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Selector<TasksProvider, int>(
          selector: (_, tasksProvider) => tasksProvider.tasks.length,
          builder: (_, tasksProvider, _) {
            List<Task> tasks = Provider.of<TasksProvider>(
              context,
              listen: false,
            ).tasks;
            return ListView.separated(
              itemCount: tasks.length,
              separatorBuilder: (_, _) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                Task task = tasks[index];
                return TaskCard(index: index, task: task);
              },
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.grey200,
        onPressed: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => const AddTaskScreen())),
        child: const Icon(Icons.add, color: ColorsManager.indigo800),
      ),
    );
  }
}
