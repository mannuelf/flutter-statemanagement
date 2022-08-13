import 'package:flutter/foundation.dart';
import 'package:statemanagement/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy bread', isDone: false),
    Task(name: 'Watch movie ', isDone: false),
    Task(name: 'Buy Break', isDone: false),
  ];

  int get taskCount {
    return tasks.length;
  }
}
