class CatogoreModel {
  int? id;
  String? name;

  CatogoreModel({this.id, this.name});

  CatogoreModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
