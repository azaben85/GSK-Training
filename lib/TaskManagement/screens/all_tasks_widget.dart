import 'package:firstproject/TaskManagement/data/dummy_data.dart';
import 'package:firstproject/TaskManagement/models/task_model.dart';
import 'package:firstproject/TaskManagement/models/todo_db_sqlhelper.dart';
import 'package:firstproject/TaskManagement/widgets/task_wiget.dart';
import 'package:flutter/material.dart';

class AllTasks extends StatefulWidget {
  List<Task> tasksList;

  AllTasks({super.key, required this.tasksList});

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasksList.length,
      itemBuilder: (context, index) {
        return TaskWidget(
          widget.tasksList[index],
          onChange: onChange,
        );
      },
    );
  }

  onChange() {
    setState(() {});
  }
}
