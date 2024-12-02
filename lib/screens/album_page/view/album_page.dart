import 'package:flutter/material.dart';
import 'package:json_app/screens/home_page/provider/json_bank_provider.dart';
import 'package:provider/provider.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  late CommentProvider cread, cwatch;
  @override
  void initState() {
    context.read<CommentProvider>().getJsonAlbumData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    cread = context.read<CommentProvider>();
    cwatch = context.watch<CommentProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Album Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: cwatch.albumsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${cwatch.albumsList[index].id}"),
              title: Text(
                "${cwatch.albumsList[index].title}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        ),
      ),
    );
  }
}
