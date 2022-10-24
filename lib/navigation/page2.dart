import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String? text;
  Page2(this.text, {super.key});
  Map<String, dynamic>? data;
  @override
  Widget build(BuildContext context) {
    if (text!.isEmpty) {
      data =
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
      text = data!['value'];
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            Text(text ?? 'NA'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Got To Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page3');
              },
              child: const Text('pushNamed :  Got To Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
