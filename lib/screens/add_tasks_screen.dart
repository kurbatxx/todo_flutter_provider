import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      padding: const EdgeInsetsDirectional.all(20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
        ),
        TextField(
          textAlign: TextAlign.center,
          autofocus: true,
          decoration: const InputDecoration(isDense: true),
          onChanged: (newText) {
            newTaskTitle = newText;
          },
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextButton(
          child: const Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
          style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
          onPressed: () {
            Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
            Navigator.pop(context);
          },
        )
      ]),
    );
  }
}
