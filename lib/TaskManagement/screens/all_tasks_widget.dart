import 'package:firstproject/TaskManagement/data/dummy_data.dart';
import 'package:firstproject/TaskManagement/widgets/task_wiget.dart';
import 'package:flutter/material.dart';

class AllTasks extends StatefulWidget {
  const AllTasks({super.key});

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks_data.length,
      itemBuilder: (context, index) {
        return TaskWidget(
          tasks_data[index],
          onChange: onChange,
        );
      },
    );
  }

  onChange() {
    setState(() {});
  }
}
