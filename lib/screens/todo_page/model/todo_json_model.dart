class TodoJsonModel {
  int? id;
  String? title;
  bool? complete;

  TodoJsonModel({this.id, this.title, this.complete});

  factory TodoJsonModel.mapToModel(Map m1) {
    return TodoJsonModel(
      id: m1['id'],
      title: m1['title'],
      complete: m1['completed'],
    );
  }
}
