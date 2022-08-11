// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallback;

  const AddTasksScreen({
    Key? key,
    required this.addTaskCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlue),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  print('TextField');
                  newTaskTitle = newText;
                  print('============================\n');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  print('adding as task');
                  addTaskCallback(newTaskTitle);
                },
                child: Text('ADD TASK'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
