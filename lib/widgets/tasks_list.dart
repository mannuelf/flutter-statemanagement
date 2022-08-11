// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:statemanagement/models/task.dart';
import 'package:statemanagement/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: ((context, index) {
        return TasksTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              widget.tasks[index].isDone = checkboxState;
            });
          },
        );
      }),
    );
  }
}
