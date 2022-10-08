import 'package:firstproject/TaskManagement/models/task_model.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function? onChange;
  TaskWidget(this.task, {this.onChange, super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: (bool? value) {
        task.completed = value!;
        onChange!();
      },
      value: task.completed,
      title: Text(task.taskName),
    );
  }
}
