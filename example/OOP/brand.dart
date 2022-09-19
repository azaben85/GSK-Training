class Brand {
  late String name;
  late String country;

  Brand(Map<String, dynamic> deviceMap) {
    name = deviceMap['name'];
    country = deviceMap['country'];
  }

  toMap() {
    return {'name': name, 'country': country};
  }
}
