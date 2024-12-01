import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

class JsonHelper {
  Future<List> commentJsonParsing() async {
    String jsonString =
        await rootBundle.loadString("assets/json/json_comment.json");
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> loadAlbum() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_album.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> loadphotos() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_photos.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> loadToDos() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_todo.json');
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> loadUsers() async {
    String jsonString =
        await rootBundle.loadString('assets/json/json_user.json');
    List json = jsonDecode(jsonString);
    return json;
  }
}
