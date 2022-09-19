import 'course.dart';
import 'device.dart';
import 'student.dart';
import 'teacher.dart';

enum Cert { phd, master, bca }

void main() {
  Student st = Student('Ahmad', 'Nablus', true, gpa: 44, age: 33);

  print(st.age);

  Teacher flutterTeacher = Teacher(
      name: 'Ahmad', cert: Cert.master, specialist: 'Mobile Development');
  Teacher reactTeacher =
      Teacher(name: 'Omar', cert: Cert.phd, specialist: 'FE Development');
  Teacher javaTeacher = Teacher.fromMap(
      {'Name': 'Saleh', 'Cert': Cert.master, 'Specialist': 'CS'});

  List<Course> courses = [];
  courses.add(Course('Flutter', 120, flutterTeacher, 'CE'));
  courses.add(Course('React JS', 200, reactTeacher, 'CE'));
  courses.add(Course('Java', 400, javaTeacher, 'JavaX'));

  for (Course c in courses) {
    print(c.name);
    print(c.teacher.name);
    // if (c.teacher.cert != Cert.master)
    print(c.teacher.toMap());
  }

  Device device = Device.fromMap({
    'name': 'labtop',
    'price': 1650.5,
    'brand': {'name': 'mac', 'country': 'usa'}
  });

  print(device.toMap());
}
