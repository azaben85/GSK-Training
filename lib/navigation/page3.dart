import 'package:firstproject/local_storage/file_helper.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  String? text;
  Page3(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
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
              child: const Text('pop Got To Page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('page1');
              },
              child: const Text('popAndPushNamed Got To Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('pop Got To Page 2'),
            ),
            ElevatedButton(
              onPressed: () async {
                print(await FileHelper().displayWelcomeScreen());
              },
              child: const Text('Display Welcome Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
