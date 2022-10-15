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
    return PortraitDesignWidget(tabController: tabController);
  }
}

class PortraitDesignWidget extends StatelessWidget {
  const PortraitDesignWidget({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.of(context).orientation == Orientation.portrait
          ? const Drawer(
              child: DrawerList(),
            )
          : null,
      appBar: AppBar(
        title: const Text('Task Managment'),
        bottom: TabBar(controller: tabController, tabs: const [
          Tab(text: 'All Tasks'),
          Tab(text: 'Completed Tasks'),
          Tab(text: 'Incompleted Tasks')
        ]),
      ),
      body: Row(
        children: [
          if (MediaQuery.of(context).orientation != Orientation.portrait)
            const Expanded(
              child: DrawerList(),
            ),
          Expanded(
            flex: 2,
            child: TabBarViewCustom(tabController: tabController),
          ),
        ],
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      if (MediaQuery.of(context).orientation == Orientation.portrait)
        const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text('AZ')),
            accountName: Text('Ahmad Zaben'),
            accountEmail: Text('azaben@gmail.com')),
      ListTile(
          title: const Text('All Tasks'),
          subtitle: const Text('Go to All Tasks Screen'),
          leading: const Icon(Icons.list),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TaskManagement(
                      index: 0,
                    )));
          }),
      ListTile(
          title: const Text('Completed Tasks'),
          subtitle: const Text('Go to Completed Tasks Screen'),
          leading: const Icon(Icons.done),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TaskManagement(
                      index: 1,
                    )));
          }),
      ListTile(
          title: const Text('Incompleted Tasks'),
          subtitle: const Text('Go to Incompleted Tasks Screen'),
          leading: const Icon(Icons.work),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TaskManagement(
                      index: 2,
                    )));
          }),
    ]);
  }
}

class TabBarViewCustom extends StatelessWidget {
  const TabBarViewCustom({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: tabController, children: const [
      AllTasks(),
      CompletedTasks(),
      InCompletedTasks(),
    ]);
  }
}
