enum CERT { ba, master, phd }

class Employee {
  String? name;
  int? age;
  CERT? cert;
  int getSalary() {
    if (cert == CERT.master) {
      return 1000;
    } else
      return 800;
  }
}
