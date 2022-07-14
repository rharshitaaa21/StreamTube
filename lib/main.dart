import 'package:flutter/material.dart';
import 'youtube_main.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "YouTube",
      home: YoutubeMain(),
    );
  }
}
