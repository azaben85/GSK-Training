enum ENVIRONMENT { earth, water, sky }

enum GENDER { male, female }

// Any class has abstract methoud have to be abst class
abstract class Animal {
  bool? canFly;
  String? name;
  ENVIRONMENT? environment;

  Animal(this.canFly, this.name, this.environment);

  String moveTechnique();

  String getFoodType();
}
