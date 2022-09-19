import 'article_source.dart';

class Article {
  ArtSource? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  Article(Map<String, dynamic> map) {
    source = ArtSource(map['source']);
    author = map['author'];
    title = map['title'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    publishedAt = map['publishedAt'];
    content = map['content'];
  }

  toMap() {
    return {
      'source': source!.toMap(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content
    };
  }
}

    // {
    //   "source": {"id": null, "name": "CleanTechnica"},
    //   "author": "Steve Hanley",
    //   "title":
    //       "You Have Questions About Electric Cars. We Have Answers (Part 1)",
    //   "description":
    //       "A lot of people have questions about electric cars. Here are some answers based on CleanTechnica's years of experience.",
    //   "url":
    //       "https://cleantechnica.com/2022/09/19/youhavequestionsaboutelectriccarswehaveanswerspart1/",
    //   "urlToImage":
    //       "https://cleantechnica.com/files/2021/09/cars1e1632671332452.jpg",
    //   "publishedAt": "20220919T14:30:45Z",
    //   "content":
    //       "While visiting my wife’s brother a few weeks ago, he mentioned he saw a Rivian R1T on the road recently and thought it looked pretty cool. So he started asking us about electric cars. After he pepper… [+7838 chars]"
    // },