import 'package:firstproject/news/data.dart';
import 'package:firstproject/news/module/news.dart';
import 'package:firstproject/news/screen/news_screen.dart';
import 'package:flutter/material.dart';

class ListNews extends StatelessWidget {
  const ListNews({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> records = news;
    int x = -1;
    List<News> newsList = records.map((e) {
      return News.fromMap(e);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: ListView(
          children: newsList.map(
        (e) {
          x++;
          return InkWell(
              child: navidateTo(
                  context,
                  '${e.title}',
                  NewsScreen(
                    index: x,
                  )));
        },
      ).toList()),
    );
  }
}

InkWell navidateTo(BuildContext context, [String label = '', Widget? navTo]) {
  return InkWell(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 137, 251, 6),
                  Color.fromARGB(255, 221, 168, 168),
                  Color.fromARGB(255, 58, 187, 116),
                ]),
            borderRadius: BorderRadius.circular(10)),
        //  width: 200,
        height: 100,
        child: Center(
            child: Text(
          label,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      onTap: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => navTo!))
          });
}
