import 'run_code.dart';

class Teacher {
  late String name;
  late Cert cert;
  late String specialist;
  // Unamed constructor
  Teacher({required this.name, this.cert = Cert.bca, this.specialist = ''});

//Named constructor
  Teacher.fromMap(Map<String, dynamic> map) {
    this.name = map['Name'];
    this.cert = map['Cert'];
    this.specialist = map['Specialist'];
  }

  Teacher.anyname(Map<String, dynamic> map);
  // Teacher(String name, String cert, String Specialist) {
  //   this.name = name;
  //   this.cert = cert;
  //   this.Specialist = Specialist;
  // }
  toMap() {
    // return type will be dynamic since it is not specified. based on return will be  Map<String, dynamic>
    return {'Name': name, 'Cert': cert, specialist: specialist};
  }
}
