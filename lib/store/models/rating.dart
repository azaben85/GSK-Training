class Rate {
  num? count;
  num? rate;

  Rate(Map<String, dynamic> map) {
    rate = map['rate'];
    count = map['count'];
  }
}

//"rating": {"rate": 4.7, "count": 130}