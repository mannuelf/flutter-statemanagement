// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/models/task_data.dart';
import 'package:statemanagement/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of(context).tasks.length,
      itemBuilder: ((context, index) {
        return TasksTile(
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          checkboxCallback: (bool checkboxState) {
            //  setState(() {
            //    widget.tasks[index].isDone = checkboxState;
            //  });
          },
        );
      }),
    );
  }
}
