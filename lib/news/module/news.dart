import 'package:firstproject/news/module/source.dart';

class News {
  Source? source;
  String? author;
  String? url;
  String? title;
  String? description;
  String? urlToImage;
  String? publishedAt;
  String? content;
  News.fromMap(Map<String, dynamic> data) {
    source = Source.fromMap(data['source']);
    author = data['author'];
    url = data['url'];
    title = data['title'];
    description = data['description'];
    urlToImage = data['urlToImage'];
    publishedAt = data['publishedAt'];
    content = data['content'];
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