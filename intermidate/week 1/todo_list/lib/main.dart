import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/data/database/database_helper.dart';
import 'package:todo_list/presentation/provider/tasks_provider.dart';
import 'package:todo_list/presentation/screens/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TasksProvider()..fetchTasks()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
