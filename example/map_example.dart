void main() {
  // map syntax
  Map<String, String> teacherInfo = {
    "Name": "Ahmad",
    "Country": "Palestine",
    'Company': 'GSK',
    "Age": '10',
    "IsMale": 'true',
    "IsMale": 'false', // will replace previous Key
  };

  teacherInfo['Sepc'] = 'CS';
  print(teacherInfo);

  print(teacherInfo['Name']);

  Map<String, dynamic> studentInfo = {
    "Name": "Ahmad Zaben",
    "Country": "Palestine",
    'Company': 'GSK',
    "Age": 10,
    "IsMale": true,
    "Family": {"Son": "Omar", "Daughter": "Yafa"},
    'Skills': ['Java', 'CSS', 'SQL']
  };

  print(studentInfo);

  Map<String, dynamic> myCountry = {
    "Country": "palestine",
    'Capital': 'jerusalem',
    'Parts': ['west bank', 'gaza']
  };

  print(myCountry);

  Map<String, dynamic> myNewMap =
      myCountry.map((key, value) => MapEntry(key.toUpperCase(), value));

  print(myNewMap);
  bool k = myNewMap.containsKey('COUNTRY');
  bool v = myNewMap.containsValue('Jerusalem');
  print(k);
  print(v);

  myNewMap['area'] = 'Middle East';

  // Add if does not exist, else will ignore
  myNewMap.putIfAbsent('area', () {
    return 'asia';
  });

  print(myNewMap);

  Map<String, dynamic> myNewCountry = myCountry.map((key, value) {
    // value.runtimeType = get data type
    if (key != 'Parts') {
      return MapEntry(key, camelCase(value));
    } else {
      return MapEntry(key, value.map((val) => camelCase(val)).toList());
    }
  });

  print(myNewCountry);
}

String camelCase(String input) {
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}
