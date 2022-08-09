// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  TasksTile({Key? key}) : super(key: key);

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
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({Key? key, required this.checkboxState}) : super(key: key);

  final bool checkboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: (bool? value) {
        // setState(() {
        //   isChecked = true;
        // });
      },
    );
  }
}
