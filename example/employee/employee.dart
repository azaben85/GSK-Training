enum CERT { ba, master, phd }

class Employee {
  String? name;
  int? age;
  CERT? cert;
  Employee({required this.name, required this.age, required this.cert});
}
