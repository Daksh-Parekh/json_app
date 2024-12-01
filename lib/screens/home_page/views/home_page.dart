import 'package:flutter/material.dart';
import 'package:json_app/utils/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.commentPage);
              },
              child: Text("Comment Screen"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.albumPage);
              },
              child: Text("Album Screen"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.photosPage);
              },
              child: Text("Photos Screen"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.todoPage);
              },
              child: Text("ToDo Screen"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.userPage);
              },
              child: Text("User Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
