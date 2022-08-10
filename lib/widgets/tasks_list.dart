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
    return ListView(children: <Widget>[
      TasksTile(isChecked: tasks[0].isDone, taskTitle: tasks[0].name),
      TasksTile(isChecked: tasks[1].isDone, taskTitle: tasks[1].name),
      TasksTile(isChecked: tasks[2].isDone, taskTitle: tasks[2].name)
    ]);
  }
}
