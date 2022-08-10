// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:statemanagement/models/task.dart';
import 'package:statemanagement/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  List<Task> tasks = [];

  TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      TasksTile(),
      TasksTile(),
      TasksTile(),
      TasksTile(),
      TasksTile(),
      TasksTile(),
    ]);
  }
}
