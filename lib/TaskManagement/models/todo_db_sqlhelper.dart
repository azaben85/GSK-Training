import 'dart:developer';
import 'dart:io';

import 'package:firstproject/TaskManagement/models/task_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ToDoSQLHelper {
  ToDoSQLHelper._();
  static ToDoSQLHelper sqlHelper = ToDoSQLHelper._();
  // CRUD=> CREATE READ UPDATE DELETE .
  Database? database;
  connectToDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + '/tasks.db';
    // رح يتنفذ اول ما يتم انشاء الداتا بيسon Create .
    database = await openDatabase(
      path,
      version: 2,
      onCreate: (db, v) {
        log('the db is created');

        db.execute(''' 
        CREATE TABLE tasks (
          id INTEGER  primary key autoincrement , 
          taskName varchar (50),
          isComplete INTEGER  
        )
      ''');
      },
      onOpen: (db) {
        print('the db is connected');
        log('the db is connected');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        log('Upgrade');
        db.execute(''' 
        drop TABLE tasks ''');
      },
    ); // return connection to database
  }

  createTable() async {
    await connectIfClosed();
    try {
      await database!.execute(''' 
        CREATE TABLE tasks (
          id INTEGER  primary key autoincrement , 
          taskName varchar (50),
          isComplete INTEGER  
        )
      ''');
    } on DatabaseException catch (e) {
      print(e);
    }
    // database.rawInsert('insert into tasks (taskName, isComplete) values (Flutter, 1)');
  }

  closeDatabase() async {
    if (database == null) {
      await connectToDatabase();
    } else if (database!.isOpen) {
      await database!.close();
    }
  }

  insertNewTask({required String taskName, bool isComplete = false}) async {
    await connectIfClosed();

    await database!.insert(
        'tasks', {'taskName': taskName, 'isComplete': isComplete ? 1 : 0});
  }

  insertNewTaskFromMap(Task task) async {
    await connectIfClosed();

    await database!.insert('tasks', task.toMap());
  }

  Future<List<Task>> getAllTasks({int isComplete = 0}) async {
    await connectIfClosed();
    List<Map<String, dynamic>> tasksList;
    if (isComplete == 0) {
      tasksList = await database!.query('tasks');
    } else {
      tasksList =
          await database!.query('tasks', where: ' isComplete = $isComplete');
    }
    return tasksList.map((e) {
      return Task.fromMap(e);
    }).toList();
  }

  getOneTask() {}
  deleteTask() {}
  updateTask() {}
  connectIfClosed() async {
    if (database == null || !database!.isOpen) {
      await connectToDatabase();
    }
  }

  getAllTables() async {
    await connectIfClosed();
    List<Map<String, Object?>> tables = await database!.query('sqlite_master');
    for (Map<String, dynamic> element in tables) {
      log(element['name'].toString());
    }
  }
}
