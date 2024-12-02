class PhotosJsonModel {
  int? id;
  String? title, url, thumbUrl;

  PhotosJsonModel({this.id, this.title, this.url, this.thumbUrl});

  factory PhotosJsonModel.mapToModel(Map m3) {
    return PhotosJsonModel(
      id: m3['id'],
      title: m3['title'],
      url: m3['url'],
      thumbUrl: m3['thumbnailUrl'],
    );
  }
}
