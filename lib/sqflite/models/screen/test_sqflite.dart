import 'package:firstproject/sqflite/models/sql_helper.dart';
import 'package:flutter/material.dart';

class TestSQFlite extends StatelessWidget {
  const TestSQFlite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test SQFLite')),
      body: Column(
        children: [
          InkWell(
            child: const Text('Check ConnectionDatabase'),
            onTap: () {
              SqlHelper.sqlHelper.connectToDatabase();
            },
          ),
          InkWell(
            child: const Text('Create Tasks Table'),
            onTap: () {
              SqlHelper.sqlHelper.createTable();
            },
          ),
          InkWell(
            child: const Text('Close Database'),
            onTap: () {
              SqlHelper.sqlHelper.closeDatabase();
            },
          ),
          InkWell(
            child: const Text('Insert Into Database'),
            onTap: () {
              SqlHelper.sqlHelper.insertNewTask();
            },
          ),
          InkWell(
            child: const Text('ListResults'),
            onTap: () {
              SqlHelper.sqlHelper.getAllTasks();
            },
          ),
          InkWell(
            child: const Text('getAllTables'),
            onTap: () {
              SqlHelper.sqlHelper.getAllTables();
            },
          ),
        ],
      ),
    );
  }
}
