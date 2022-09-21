import '../animal/animal.dart';
import '../animal/bird.dart';
import '../animal/dog.dart';
import 'employee.dart';
import 'teacher.dart';

void main(List<String> args) {
  Teacher teacher = Teacher('Ahmad', 55, CERT.master);

  Employee emp = Employee(name: '', age: 55, cert: CERT.master);

  Dog dog = Dog('dogx', gender: GENDER.male);

  print(dog.moveTechnique());

  Bird bird = Bird('Bird X', gender: GENDER.male);

  print(bird.moveTechnique());
}
