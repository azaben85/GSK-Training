import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  String? text;
  Page3(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
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
              child: Text('pop Got To Page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('page1');
              },
              child: Text('popAndPushNamed Got To Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
