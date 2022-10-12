import 'package:firstproject/TaskManagement/screens/all_tasks_widget.dart';
import 'package:firstproject/TaskManagement/screens/completed_tasks_widget.dart';
import 'package:firstproject/TaskManagement/screens/incompleted_tasks_widget.dart';
import 'package:flutter/material.dart';

class TaskManagement extends StatefulWidget {
  final index;
  const TaskManagement({super.key, this.index});

  @override
  State<TaskManagement> createState() => _TaskManagementState();
}

class _TaskManagementState extends State<TaskManagement>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  initTabController() {
    tabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: widget.index ?? 0,
        animationDuration: const Duration(seconds: 1));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTabController();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Managment'),
        bottom: TabBar(controller: tabController, tabs: const [
          Tab(text: 'All Tasks'),
          Tab(text: 'Completed Tasks'),
          Tab(text: 'Incompleted Tasks')
        ]),
      ),
      body: TabBarView(controller: tabController, children: const [
        AllTasks(),
        CompletedTasks(),
        InCompletedTasks(),
      ]),
    );
  }
}
