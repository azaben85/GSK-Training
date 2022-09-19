void main() {
  String name = 'Ahmad Zaben';
  String name2 = "Ahmad Zaben";
  String name3 = '''Ahmad 
zaben 
  from Nablus''';

  print(name3);

  String myName = 'ahmad'; // Ahmad
  String result = myName.substring(0, 1).toUpperCase() + myName.substring(1);
  print(result);

  int x = 9;
  double d = 0;

  num n = 5, n2 = 5.6;
  print(d);
  print(n);
  print(n2);

  List<String> studentsName = ['ahmad', 'omar', 'zaben'];
  List<String> teachersName = ['Sara', 'Fadi', 'Saleh'];

  studentsName.add('Naser');
  studentsName.insert(0, 'Yafa');
  studentsName.addAll(teachersName);

  bool boolx = studentsName.every(
    (element) {
      return element.length > 4;
    },
  );

  print(boolx);

  boolx = studentsName.any(
    (element) {
      return element.length > 4;
    },
  );
  List<String> studentsNameWithS = studentsName.where((element) {
    return element.startsWith('S');
  }).toList();
  print(boolx);
  print(studentsNameWithS.isEmpty);
  print(studentsNameWithS.isNotEmpty);

  print(boolx);

  print(studentsName);
  print(studentsNameWithS);

  List<String> studentsNameMapped = studentsName.map((item) {
    // map => loop on all elements and update them .. ForEach does not return value
    return camelCase(item);
  }).toList();

  print(studentsNameMapped);

  List<int> studentsNameLength = studentsName.map((item) {
    // map => loop on all elements and update them .. ForEach does not return value
    return item.length;
  }).toList();

  print(studentsNameLength);

  List gskNames = [
    ...studentsName,
    ...teachersName,
    ...studentsNameMapped
  ]; // spread operator ...

  print(gskNames);
}

String camelCase(String input) {
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}
