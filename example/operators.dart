void main() {
  // + - * / ~

  int x = 15, y = 2;

  int z = x ~/ y;
  print(z);
  int r = x % y;
  print(r);

  /*
    if , else if, else
    for while switch
  */

  List<String> studentsName = ['ahmad', 'omar', 'zaben'];
  for (String x in studentsName) {
    if (x == 'omar') {
      continue;
    }
    print(x);
  }

  Map<String, dynamic> studentsMap = {
    '120191122': {'name': 'omar', 'age': 9, 'gpa': 99},
    '120191123': {'name': 'saeed', 'age': 10, 'gpa': 88},
    '120191124': {'name': 'hassan', 'age': 8, 'gpa': 77},
    '120191125': {'name': 'akram', 'age': 9, 'gpa': 66},
  };

  print(average(studentsMap));
  prindNames(studentsMap);
}

double average(Map<String, dynamic> input) {
  int count = input.length;
  double gpa = 0;
  input.forEach((key, value) {
    gpa += value['gpa'];
  });

  return gpa / count;
}

void prindNames(Map<String, dynamic> input) {
  input.forEach((key, value) {
    double gpa = value['gpa'] * 1.0;
    if (gpa > 80.0) {
      print(value['name']);
    }
  });
}
