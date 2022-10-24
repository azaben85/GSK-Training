// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:firstproject/navigation/page2.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});
  String content = 'sasas';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              content = value;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Page2(
                    content,
                  );
                },
              ));
            },
            child: const Text('push:  Got To Page 2'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return Page2(
                    content,
                  );
                },
              ));
            },
            child: const Text('pushReplacement:  Got To Page 2'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('page2', arguments: {'value': content});
            },
            child: const Text('pushNamed :  Got To Page 2'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('screen', arguments: {'value': content});
            },
            //. onGenerateRoute in MaterialApp
            child: const Text(
                'pushNamed :   Got To "screen" (does not exist in routing) '),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('Unknown', arguments: {'value': content});
            },
            //. onUnknownRoute in MaterialApp
            child: const Text(
                'pushNamed :   Got To Unknown (does not exist in routing) '),
          ),
        ],
      ),
    );
  }
}

class Page2Arg {
  String? text;
  Page2Arg({
    this.text,
  });
}
