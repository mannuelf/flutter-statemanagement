// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:statemanagement/models/task.dart';
import 'package:statemanagement/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  List<Task> tasks = [
    Task(name: 'Buy bread', isDone: false),
    Task(name: 'Watch movie ', isDone: false),
    Task(name: 'Buy Break', isDone: true)
  ];

  TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: ((context, index) {
        return TasksTile(
            isChecked: tasks[index].isDone, taskTitle: tasks[index].name);
      }),
    );
  }
}
