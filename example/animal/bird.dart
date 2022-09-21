import 'animal.dart';

class Bird extends Animal {
  int? age;
  GENDER? gender;
  Bird(String name, {this.age, this.gender})
      : super(true, name, ENVIRONMENT.sky);

  @override
  String moveTechnique() {
    return 'Fly';
  }

  @override
  String getFoodType() {
    return 'Seeds';
  }
}
