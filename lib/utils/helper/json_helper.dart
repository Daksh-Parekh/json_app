import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:json_app/screens/album_page/model/album_json_model.dart';
import 'package:json_app/screens/comment_screen/model/json_app_model.dart';
import 'package:json_app/screens/photo_page/model/photos_json_model.dart';
import 'package:json_app/screens/todo_page/model/todo_json_model.dart';
import 'package:json_app/screens/user_page/model/user_json_model.dart';

class JsonHelper {
  // List<JsonAppModel> commentLists = [];
  Future<List<JsonAppModel>> commentJsonParsing() async {
    String jsonString =
        await rootBundle.loadString("assets/json/json_comment.json");
    List json = jsonDecode(jsonString);
    log('convers');
    List<JsonAppModel> commentLists = json
        .map(
          (e) => JsonAppModel(
              id: e['id'], body: e['body'], email: e['email'], name: e['name']),
        )
        .toList();
    log('${commentLists}');
    //  JsonAppModel.mapToModel(json)
    return commentLists;
  }

  Future<List<AlbumJsonModel>> loadAlbum() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_album.json');
    List jsonList = jsonDecode(jsonString);

    List<AlbumJsonModel> albumList = jsonList
        .map(
          (e) => AlbumJsonModel(
            id: e['id'],
            title: e['title'],
          ),
        )
        .toList();

    return albumList;
  }

  Future<List<PhotosJsonModel>> loadphotos() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_photos.json');
    List jsonList = jsonDecode(jsonString);

    List<PhotosJsonModel> photoList = jsonList
        .map(
          (e) => PhotosJsonModel(
            id: e['id'],
            title: e['title'],
            url: e['url'],
            thumbUrl: e['thumbnailUrl'],
          ),
        )
        .toList();

    return photoList;
  }

  Future<List<TodoJsonModel>> loadToDos() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_todo.json');
    List jsonList = jsonDecode(jsonString);

    List<TodoJsonModel> toDoList = jsonList
        .map(
          (e) => TodoJsonModel(
            id: e['id'],
            title: e['title'],
            complete: e['completed'],
          ),
        )
        .toList();
    return toDoList;
  }

  Future<List<MainUserJsonModel>> loadUsers() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_user.json');
    List jsonList = jsonDecode(jsonString);
    log('convers');
    List<MainUserJsonModel> userList = jsonList
        .map((e) => MainUserJsonModel(
              id: e['id'],
              name: e['name'],
              userName: e['username'],
              email: e['email'],
              addModel: AddressUserJsonModel.mapToModel(e['address']),
              phone: e['phone'],
              website: e['website'],
              coModel: CompanyUserJsonModel.mapToModel(e['company']),
            ))
        .toList();

    return userList;
  }
}
