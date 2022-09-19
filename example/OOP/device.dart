import 'brand.dart';

class Device {
  late String name;
  late double price;
  late Brand brand;

  Device.fromMap(Map<String, dynamic> deviceMap) {
    name = deviceMap['name'];
    price = deviceMap['price'];
    brand = Brand(deviceMap['brand']);
  }

  toMap() {
    return {'name': name, 'price': price, 'brand': brand.toMap()};
  }
}



/*
Map<String,dynamic> device = {
    'name':'labtop',
    'price':1650,
    'brand':{
      'name':'mac',
      'country':'usa'
    }
  };

*/