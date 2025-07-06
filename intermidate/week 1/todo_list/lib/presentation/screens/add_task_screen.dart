import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/data/functions/validation/not_empty_field_validation.dart';
import 'package:todo_list/data/models/task.dart';
import 'package:todo_list/presentation/widgets/custom_button.dart';
import 'package:todo_list/presentation/widgets/custom_text_form_field.dart';
import 'package:todo_list/presentation/provider/tasks_provider.dart';
import 'package:todo_list/utils/colors_manager.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    taskTitleController.dispose();
    taskDescriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.grey200,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Add Task',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: ColorsManager.grey200,
        elevation: 0,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 35,
              children: [
                CustomTextFormField(
                  textEditingController: taskTitleController,
                  hint: 'Enter task title',
                  validator: validateNotEmpty,
                ),
                CustomTextFormField(
                  textEditingController: taskDescriptionController,
                  hint: 'Enter task description',
                  validator: validateNotEmpty,
                ),
                SizedBox(height: 30),
                CustomButton(
                  text: 'Save',
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) return;

                    Provider.of<TasksProvider>(context, listen: false).addTask(
                      Task(
                        title: taskTitleController.text,
                        description: taskDescriptionController.text,
                      ),
                    );

                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
