import 'package:firstproject/news/data.dart';
import 'package:firstproject/news/module/news.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final int? index;
  const NewsScreen({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> record = news[index!];
    News data = News.fromMap(record);
    return Scaffold(
      appBar: AppBar(
        title: Text('$index ${data.title ?? ''} '),
      ),
      body: Column(children: [
        Container(
            color: Colors.green,
            width: 400,
            height: 300,
            child: Image.network(
              data.urlToImage ?? '',
              fit: BoxFit.cover,
              errorBuilder: (x, y, z) {
                return Center(child: Icon(Icons.image));
              },
            )),
        Row(
          children: [
            Text('${data.author ?? ''}'),
            Text('          ${data.publishedAt ?? ''}'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(child: Text('${data.content ?? ''}')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(child: Text('Source: ${data.source!.name ?? ''}')),
        ),
      ]),
    );
  }
}

/*
 {
    "source": {"id": "theverge", "name": "The Verge"},
    "author": "Andrew J. Hawkins",
    "title":
        "Tesla now has 160,000 customers running its Full Self Driving beta",
    "description":
        "Tesla revealed on its AI day event on Friday that FSD beta is currently running on 160,000 cars. The company explained how training models are improving FSD and shared an update on the first Dojo supercomputer slated for Q1 2023.",
    "url":
        "https://www.theverge.com/2022/10/1/23380764/teslaaidayfullselfdrivingfsdupdatesdojosupercomputer",
    "urlToImage":
        "https://cdn.voxcdn.com/thumbor/ZNYdzGsXf27bzeavaTylM4UyUM0=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.voxcdn.com/uploads/chorus_asset/file/23986647/acastro_STK086_02.jpg",
    "publishedAt": "20221001T04:23:41Z",
    "content":
        "Illustration by Alex Castro / The Verge\r\n\n \n\n Tesla's Optimus robot prototype was not the only thing the company shared on Friday evening. Autopilot director Ashok Elluswamy took the stage during Tes… [+4837 chars]"
  }

*/
