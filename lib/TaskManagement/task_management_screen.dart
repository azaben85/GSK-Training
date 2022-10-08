import 'package:firstproject/TaskManagement/screens/all_tasks_widget.dart';
import 'package:firstproject/TaskManagement/screens/completed_tasks_widget.dart';
import 'package:firstproject/TaskManagement/screens/incompleted_tasks_widget.dart';
import 'package:flutter/material.dart';

class TaskManagement extends StatefulWidget {
  const TaskManagement({super.key});

  @override
  State<TaskManagement> createState() => _TaskManagementState();
}

class _TaskManagementState extends State<TaskManagement> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Task Managment'),
          bottom: const TabBar(tabs: [
            Tab(text: 'All Tasks'),
            Tab(text: 'Completed Tasks'),
            Tab(text: 'Incompleted Tasks')
          ]),
        ),
        body: const TabBarView(children: [
          AllTasks(),
          CompletedTasks(),
          InCompletedTasks(),
        ]),
      ),
    );
  }
}
