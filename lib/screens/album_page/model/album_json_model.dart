class AlbumJsonModel {
  int? id;
  String? title;

  AlbumJsonModel({this.id, this.title});

  factory AlbumJsonModel.mapToModel(Map m2) {
    return AlbumJsonModel(
      id: m2['id'],
      title: m2['title'],
    );
  }
}
