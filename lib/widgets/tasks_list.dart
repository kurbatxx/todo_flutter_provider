import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name!,
                checkboxCallback: (bool? checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
