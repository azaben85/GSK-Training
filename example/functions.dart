void main() {
// Functions
/*
4 parts
Function Header

{Return type
Function Name
Parameters
Body}

*/

  int sum(int num1, int num2) {
    int results = num1 + num2;
    return results;
  }

  int x = sum(3, 5);
  print(x);

  Map<String, dynamic> myCountry = {
    "Country": "palestine",
    'Capital': 'jerusalem',
    'Parts': ['west bank', 'gaza']
  };

  Map<String, dynamic> myNewCountry = convertMap(myCountry);

  print(myNewCountry);

  String name = getMyFullName('Ahmad', 'Hammad', 'Zaben');
  print(name);

  name = getMyFullNameOp('Ahmad', 'Hammad');
  print(name);

  name = getNameOptionalNamedParameter(email: 'a@test.com');
  print(name);

  name = getFullNameT('Ahmad', 'Zaben', mname: 'Hammad');
  print(name);

  name = getFullNameT('abed', 'hamed');
  print(name);
}

String camelCase(String input) {
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}

List<String> convertStringListToCamelCase(List<String> input) {
  return input.map((val) => camelCase(val)).toList();
}

Map<String, dynamic> convertMap(Map<String, dynamic> input) {
  return input.map((key, value) {
    // value.runtimeType = get data type
    if (value.runtimeType == List<String>) {
      return MapEntry(key, convertStringListToCamelCase(value));
    } else {
      return MapEntry(key, camelCase(value));
    }
  });
}

String getMyFullName(String fname, String mname, String lname) {
  // Positional Function
  return '$fname $mname $lname';
}

String getMyFullNameOp(String fname,
    [String mname = 'Undefined', String lname = 'Undefined', int age = 35]) {
  // Optional Positional Parameters
  return '$fname $mname $lname';
}

// optional named paremeter

String getNameOptionalNamedParameter(
    {String name = '', int age = 25, String email = ''}) {
  return 'Name $name Age $age email $email';
}

/*
String  impossible to be null with positional funtions. 
String? => nullable String  ---- impossible to be null
int? => nullable int
*/

String getFullNameT(String firstName, String lastName, {String mname = ''}) {
  String result = camelCase(firstName);
  if (mname.isNotEmpty) {
    result +=
        ' ${mname[0].toUpperCase()}.'; // == mname.substring(0, 1).toUpperCase() same mname[0].toUpperCase()
  }

  result += ' ${camelCase(lastName)}';

  return result;
}
