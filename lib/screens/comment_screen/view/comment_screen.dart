import 'package:flutter/material.dart';
import 'package:json_app/main.dart';
import 'package:json_app/screens/home_page/provider/json_bank_provider.dart';
import 'package:json_app/utils/helper/json_helper.dart';
import 'package:provider/provider.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  late CommentProvider cread, cwatch;
  @override
  Widget build(BuildContext context) {
    cread = context.read<CommentProvider>();
    cwatch = context.watch<CommentProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment Page"),
      ),
      body: ListView.builder(
        itemCount: cwatch.comments.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${cwatch.comments[index]["id"]}"),
            title: Text(
              "${cwatch.comments[index]["name"]}",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            subtitle: Text("~ ${cread.comments[index]["email"]}"),
          );
        },
      ),
    );
  }
}
