// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({Key? key}) : super(key: key);

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  // lifted state up to parent aka state class
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(
      {Key? key,
      required this.checkboxState,
      required this.toggleCheckboxState})
      : super(key: key);

  final bool checkboxState;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: ((value) {
        toggleCheckboxState;
      }),
    );
  }
}
