import 'package:flutter/material.dart';
import 'package:json_app/screens/home_page/provider/json_bank_provider.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late CommentProvider cread, cwatch;
  @override
  Widget build(BuildContext context) {
    cread = context.read<CommentProvider>();
    cwatch = context.watch<CommentProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: cwatch.users.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${cwatch.users[index]["id"]}"),
              title: Text(
                "${cread.users[index]['name']}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("${cwatch.users[index]['address']['street']}"),
            );
          },
        ),
      ),
    );
  }
}
