import 'package:flutter/material.dart';
import 'package:json_app/screens/home_page/provider/json_bank_provider.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  late CommentProvider cread, cwatch;
  @override
  void initState() {
    context.read<CommentProvider>().getToDoJsonData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    cread = context.read<CommentProvider>();
    cwatch = context.watch<CommentProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: cwatch.todosList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${cwatch.todosList[index].id}"),
              title: Text(
                "${cread.todosList[index].title}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("${cwatch.todosList[index].complete}"),
            );
          },
        ),
      ),
    );
  }
}
