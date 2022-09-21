import 'animal.dart';

class Dog extends Animal {
  int? age;
  GENDER? gender;
  Dog(String name, {this.age, this.gender})
      : super(false, name, ENVIRONMENT.earth);

  @override
  String moveTechnique() {
    return 'run';
  }

  @override
  String getFoodType() {
    return 'Meat';
  }
}
