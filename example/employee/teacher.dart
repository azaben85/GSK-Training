import 'employee.dart';

// share data
class Teacher implements Employee {
  double? _salary;
  String? specification;

  @override
  int? age = 55;

  @override
  CERT? cert;

  @override
  String? name;

  @override
  int getSalary() {
    return 50;
  }
}
