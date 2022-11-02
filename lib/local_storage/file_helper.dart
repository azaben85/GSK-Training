import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileHelper {
  writeOnFile(String data) async {
    try {
      Directory directory = await getApplicationDocumentsDirectory();
      String path = directory.path;
      File file = File('$path/gsk1.txt');
      file.writeAsString(data);
    } on Exception catch (e) {
      print('writeOnFile : $e');
      //TODO
    }
  }

  Future<String> readFromFile() async {
    try {
      Directory directory = await getApplicationDocumentsDirectory();
      String path = directory.path;
      File file = File('$path/gsk1.txt');
      String content = await file.readAsString();

      return content;
    } on Exception catch (e) {
      print('readFromFile : $e');
      return 'NODATA';
    }
  }

  Future<String> displayWelcomeScreen() async {
    String contenet = await readFromFile();
    if (contenet == 'NODATA') {
      await writeOnFile('DONE');
      return 'ONBOARD';
    }
    return 'HOMESCREEN';
  }
}
