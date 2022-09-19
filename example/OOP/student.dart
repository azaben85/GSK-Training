class Student {
  late String name;
  late String city;
  late bool isMale;
  late double gpa;
  late double age;

  // Constructor

  Student(this.name, this.city, this.isMale,
      {double gpa = 55, double age = 55}) {
    this.gpa = gpa;
    this.age = age;
  }
}
