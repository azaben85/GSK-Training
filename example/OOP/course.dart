import 'teacher.dart';

class Course {
  late String name;
  late int hours;
  late Teacher teacher;
  late String collageName;
  Course(String name, int hours, Teacher teacher, String collageName) {
    this.name = name;
    this.hours = hours;
    this.teacher = teacher;
    this.collageName = collageName;
  }
}
