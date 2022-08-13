import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:statemanagement/models/task.dart';

class TaskData extends ChangeNotifier {
  // private
  final List<Task> _tasks = [
    Task(name: 'Buy bread', isDone: false),
    Task(name: 'Watch movie ', isDone: false),
    Task(name: 'Buy Break', isDone: false),
  ];

  // public
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  //
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }
}
