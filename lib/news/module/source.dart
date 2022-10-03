class Source {
  String? id;
  String? name;
  Source.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    name = data['name'];
  }
}

//{"id": "theverge", "name": "The Verge"}