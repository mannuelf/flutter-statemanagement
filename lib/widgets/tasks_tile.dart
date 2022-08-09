import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // ignore: prefer_const_constructors
      title: Text(
        'This is a task',
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}
