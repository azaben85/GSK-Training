import 'package:firstproject/TaskManagement/data/dummy_data.dart';
import 'package:firstproject/TaskManagement/models/task_model.dart';
import 'package:firstproject/TaskManagement/widgets/task_wiget.dart';
import 'package:flutter/material.dart';

class CompletedTasks extends StatefulWidget {
  const CompletedTasks({super.key});

  @override
  State<CompletedTasks> createState() => _CompletedTasksState();
}

class _CompletedTasksState extends State<CompletedTasks> {
  @override
  Widget build(BuildContext context) {
    List<Task> completedTasks =
        tasks_data.where((element) => element.completed).toList();
    return ListView.builder(
      itemCount: completedTasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(completedTasks[index], onChange: onChange);
      },
    );
  }

  onChange() {
    setState(() {});
  }
}
