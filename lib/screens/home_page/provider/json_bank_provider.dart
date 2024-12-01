import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:json_app/utils/helper/json_helper.dart';

class CommentProvider with ChangeNotifier {
  List comments = [];
  List albums = [];
  List photos = [];
  List todos = [];
  List users = [];
  Future<void> getJsonData() async {
    JsonHelper helper = JsonHelper();
    comments = await helper.commentJsonParsing();
    albums = await helper.loadAlbum();
    photos = await helper.loadphotos();
    todos = await helper.loadToDos();
    users = await helper.loadUsers();
    notifyListeners();
  }
}
