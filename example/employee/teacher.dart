import 'employee.dart';

// share data
class Teacher extends Employee {
  double? salary;
  String? specification;

  Teacher(String name, int age, CERT cert)
      : super(name: name, age: age, cert: cert);
}
