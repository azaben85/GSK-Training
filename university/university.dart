class University {
  List<String>? domains;
  String? alphaTwoCode;
  String? country;
  String? name;
  List<String>? webPages;
  String? stateProvince;

  University.fromMap(Map<String, dynamic> university) {
    domains = university['domains'];
    alphaTwoCode = university['alpha_two_code'];
    country = university['country'];
    webPages = university['web_pages'];
    name = university['name'];
    stateProvince = university['state-province'];
  }
}
