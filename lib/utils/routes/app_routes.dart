import 'package:flutter/material.dart';
import 'package:json_app/screens/album_page/view/album_page.dart';
import 'package:json_app/screens/comment_screen/view/comment_screen.dart';
import 'package:json_app/screens/home_page/views/home_page.dart';
import 'package:json_app/screens/photo_page/view/photo_page.dart';
import 'package:json_app/screens/todo_page/view/todo_page.dart';
import 'package:json_app/screens/user_page/view/user_page.dart';

class AppRoutes {
  static String homePage = "/";
  static String commentPage = "comment_page";
  static String albumPage = "album_page";
  static String photosPage = "photos_page";
  static String todoPage = "todo_page";
  static String userPage = "user_page";

  static Map<String, Widget Function(BuildContext)> routes = {
    homePage: (context) => HomePage(),
    commentPage: (context) => CommentScreen(),
    albumPage: (context) => AlbumPage(),
    photosPage: (context) => PhotoPage(),
    todoPage: (context) => TodoPage(),
    userPage: (context) => UserPage(),
  };
}
