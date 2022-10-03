import 'package:firstproject/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: HomeScreen()));
}

class MyFirstUI extends StatelessWidget {
  Map<String, dynamic> personData = {
    'name': 'Omar',
    'city': 'Nablue',
    'age': 10,
    'isMale': true
  };

  List<Map<String, dynamic>> students = [
    {'name': 'Ahmad', 'age': 50, 'city': 'Nablus'},
    {'name': 'Hazem', 'age': 33, 'city': 'Nablus'},
    {'name': 'Nizar', 'age': 22, 'city': 'Nablus'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First APP'),
      ),
      body: Center(
        child: Column(
          children: students.map((e) {
            return Column(
              children: e.keys.map((key) {
                return Row(children: [
                  Text('$key:'),
                  Text('${personData[key]}'),
                ]);
              }).toList(),
            );
          }).toList(),

          /*personData.keys.map((key) {
            return Row(children: [
              Text('$key:'),
              Text('${personData[key]}'),
            ]);
          }).toList(),
          */
        ),
      ),
    );
  }
}
