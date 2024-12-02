class MainUserJsonModel {
  int? id;
  String? name, userName, email, phone, website;
  AddressUserJsonModel? addModel;
  CompanyUserJsonModel? coModel;
  MainUserJsonModel({
    this.id,
    this.name,
    this.userName,
    this.email,
    this.addModel,
    this.phone,
    this.website,
    this.coModel,
  });

  factory MainUserJsonModel.mapToModel(Map m1) {
    return MainUserJsonModel(
      id: m1['id'],
      name: m1['name'],
      userName: m1['username'],
      email: m1['email'],
      addModel: AddressUserJsonModel.mapToModel(m1['address']),
      phone: m1['phone'],
      website: m1['website'],
      coModel: CompanyUserJsonModel.mapToModel(m1['company']),
    );
  }
}

class AddressUserJsonModel {
  String? steet, suite, city, zipCode;
  GeoUserJsonModel? geoModel;

  AddressUserJsonModel(
      {this.steet, this.suite, this.city, this.zipCode, this.geoModel});

  factory AddressUserJsonModel.mapToModel(Map m2) {
    return AddressUserJsonModel(
      steet: m2['street'],
      suite: m2['suite'],
      city: m2['city'],
      zipCode: m2['zipcode'],
      geoModel: GeoUserJsonModel.mapToModel(m2['geo']),
    );
  }
}

class GeoUserJsonModel {
  String? lat, lng;

  GeoUserJsonModel({this.lat, this.lng});

  factory GeoUserJsonModel.mapToModel(Map m3) {
    return GeoUserJsonModel(
      lat: m3['lat'],
      lng: m3['lng'],
    );
  }
}

class CompanyUserJsonModel {
  String? name, catchPhrase, bs;

  CompanyUserJsonModel({this.name, this.catchPhrase, this.bs});

  factory CompanyUserJsonModel.mapToModel(Map m4) {
    return CompanyUserJsonModel(
      name: m4['name'],
      catchPhrase: m4['catchPhrase'],
      bs: m4['bs'],
    );
  }
}
