import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/models/task_data.dart';
import 'package:statemanagement/screens/tasks_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // ChangeNotfier Proveder give all childred taskData
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
