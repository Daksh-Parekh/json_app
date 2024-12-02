import 'package:flutter/material.dart';
import 'package:json_app/main.dart';
import 'package:json_app/screens/home_page/provider/json_bank_provider.dart';
import 'package:provider/provider.dart';

class DummyPostJsonPage extends StatefulWidget {
  const DummyPostJsonPage({super.key});

  @override
  State<DummyPostJsonPage> createState() => _DummyPostJsonPageState();
}

class _DummyPostJsonPageState extends State<DummyPostJsonPage> {
  late CommentProvider cread, cwatch;

  @override
  Widget build(BuildContext context) {
    cread = context.read<CommentProvider>();
    cwatch = context.watch<CommentProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy Post Json"),
      ),
    );
  }
}
