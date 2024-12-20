import 'package:flutter/material.dart';
import 'package:json_app/screens/home_page/provider/json_bank_provider.dart';
import 'package:provider/provider.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  late CommentProvider cread, cwatch;
  @override
  void initState() {
    context.read<CommentProvider>().getJsonPhotoData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    cread = context.read<CommentProvider>();
    cwatch = context.watch<CommentProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: cwatch.photosList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${cwatch.photosList[index].id}"),
              title: Text(
                "${cread.photosList[index].title}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("${cwatch.photosList[index].url}"),
            );
          },
        ),
      ),
    );
  }
}
