// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  const TasksTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: ((value) {
          checkboxCallback(value);
        }),
      ),
    );
  }
}
