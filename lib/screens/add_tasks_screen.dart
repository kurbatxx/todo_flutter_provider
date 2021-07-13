import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        const TextField(
          textAlign: TextAlign.center,
          autofocus: true,
          decoration: InputDecoration(isDense: true),
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
            //
          },
        )
      ]),
    );
  }
}
