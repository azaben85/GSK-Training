import 'data.dart';
import 'store.dart';

void main(List<String> args) {
  List<Store> stores = (data as List).map((e) => Store(e)).toList();

  print(stores.length);
}
