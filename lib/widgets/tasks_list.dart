// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/models/task_data.dart';
import 'package:statemanagement/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData, Widget? child) {
        return ListView.builder(
          itemCount: TaskData.taskCount,
          itemBuilder: ((context, index) {
            return TasksTile(
              isChecked: TaskData.tasks[index].isDone,
              taskTitle: TaskData.tasks[index].name,
              checkboxCallback: (bool checkboxState) {
                //  setState(() {
                //    widget.tasks[index].isDone = checkboxState;
                //  });
              },
            );
          }),
        );
      },
    );
  }
}
