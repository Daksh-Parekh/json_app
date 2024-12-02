class JsonAppModel {
  int? id;
  String? name, email, body;

  JsonAppModel({this.id, this.name, this.body, this.email});

  factory JsonAppModel.mapToModel(Map m1) {
    return JsonAppModel(
      id: m1['id'],
      name: m1['name'],
      body: m1['body'],
      email: m1['email'],
    );
  }
}
