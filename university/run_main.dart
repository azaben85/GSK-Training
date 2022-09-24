import 'data.dart';
import 'university.dart';

main() {
  List data = university_data;

  List<University> universityList =
      data.map((e) => University.fromMap(e)).toList();

  universityList.forEach((element) {
    if (element.webPages!.length > 1) {
      print(element.webPages);
    }
  });
}
