import '../animal/animal.dart';
import '../animal/bird.dart';
import '../animal/dog.dart';
import 'employee.dart';
import 'teacher.dart';

void main(List<String> args) {
  Teacher teacher = Teacher();
  print(teacher.getSalary());

  Dog dog = Dog('dogx', gender: GENDER.male);

  print(dog.moveTechnique());

  Bird bird = Bird('Bird X', gender: GENDER.male);

  print(bird.moveTechnique());
}
