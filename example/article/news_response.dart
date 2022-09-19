import 'article.dart';

class NewsResponse {
  String? status;
  int? totalResults;
  List<Article>? articles;
  NewsResponse(Map<String, dynamic> map) {
    status = map['status'];
    totalResults = map['totalResults'];
    articles = (map['articles'] as List).map((e) => Article(e)).toList();
  }
}


  // "status": "ok",
  // "totalResults": 6248,