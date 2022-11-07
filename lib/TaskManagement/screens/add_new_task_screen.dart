import 'package:firstproject/TaskManagement/data/dummy_data.dart';
import 'package:firstproject/TaskManagement/models/task_model.dart';
import 'package:firstproject/TaskManagement/models/todo_db_sqlhelper.dart';
import 'package:firstproject/TaskManagement/task_management_screen.dart';
import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String? taskName = '';
  TextEditingController taskNameContrller = TextEditingController();
  bool completed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Task')),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            TextField(
              controller: taskNameContrller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Switch(
              value: completed,
              onChanged: (value) {
                completed = value;
                setState(() {});
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                tasks_data.add(Task(taskNameContrller.text, completed));
                ToDoSQLHelper.sqlHelper.insertNewTaskFromMap(
                    Task(taskNameContrller.text, completed));

                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => const TaskManagement(
                            index: 0,
                          )),
                  (route) {
                    return route.isFirst;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
