import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:json_app/screens/album_page/model/album_json_model.dart';
import 'package:json_app/screens/comment_screen/model/json_app_model.dart';
import 'package:json_app/screens/photo_page/model/photos_json_model.dart';
import 'package:json_app/screens/todo_page/model/todo_json_model.dart';
import 'package:json_app/screens/user_page/model/user_json_model.dart';
import 'package:json_app/utils/helper/json_helper.dart';

class CommentProvider with ChangeNotifier {
  List<JsonAppModel> comments = [];
  List<AlbumJsonModel> albumsList = [];
  List<PhotosJsonModel> photosList = [];
  List<TodoJsonModel> todosList = [];
  List<MainUserJsonModel> usersList = [];

  void getJsoncommentsData() async {
    JsonHelper helper = JsonHelper();
    log('open');
    comments = await helper.commentJsonParsing();
    log('done');
    notifyListeners();
  }

  Future<void> getJsonAlbumData() async {
    JsonHelper helper = JsonHelper();
    albumsList = await helper.loadAlbum();
    notifyListeners();
  }

  void getJsonPhotoData() async {
    JsonHelper helper = JsonHelper();
    photosList = await helper.loadphotos();
    notifyListeners();
  }

  Future<void> getToDoJsonData() async {
    JsonHelper helper = JsonHelper();
    todosList = await helper.loadToDos();
    notifyListeners();
  }

  void getUserJsonData() async {
    JsonHelper helper = JsonHelper();
    log('open');
    usersList = await helper.loadUsers();
    log('done');
    notifyListeners();
  }
}
