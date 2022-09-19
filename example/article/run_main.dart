import 'data/dummy_data.dart';
import 'news_response.dart';

main() {
  NewsResponse newResponse = NewsResponse(data);
  print(newResponse.articles!.length);
}
