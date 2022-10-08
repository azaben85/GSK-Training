import 'package:firstproject/TaskManagement/data/dummy_data.dart';
import 'package:firstproject/TaskManagement/models/task_model.dart';
import 'package:firstproject/TaskManagement/widgets/task_wiget.dart';
import 'package:flutter/material.dart';

class InCompletedTasks extends StatefulWidget {
  const InCompletedTasks({super.key});

  @override
  State<InCompletedTasks> createState() => _InCompletedTasksState();
}

class _InCompletedTasksState extends State<InCompletedTasks> {
  @override
  Widget build(BuildContext context) {
    List<Task> inCompletedTasks =
        tasks_data.where((element) => !element.completed).toList();

    return ListView.builder(
      itemCount: inCompletedTasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(inCompletedTasks[index], onChange: onChange);
      },
    );
  }

  onChange() {
    setState(() {});
  }
}
