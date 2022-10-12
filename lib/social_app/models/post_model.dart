class PostModel {
  String? content;
  String? image;
  PostUserModel? postUserModel;
  bool? isFav;
  PostModel({this.content, this.image, this.postUserModel, this.isFav = false});
}

class PostUserModel {
  String? name;
  String? image;
  PostUserModel({this.name, this.image});
}
