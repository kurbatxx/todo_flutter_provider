import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Купить молока'),
    Task(name: 'Починить машину'),
    Task(name: 'Не брать ипотеку'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
