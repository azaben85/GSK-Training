class ArtSource {
  String? id;
  String? name;
  ArtSource(Map<String, dynamic> source) {
    id = source['id'];
    name = source['name'];
  }

  toMap() {
    return {'id': id, 'name': name};
  }
}

//"source": {"id": null, "name": "CleanTechnica"},