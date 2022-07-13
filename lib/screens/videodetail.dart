import 'package:flutter/material.dart';

class VideoDetail extends StatefulWidget {
  final detail;
  const VideoDetail({Key? key, this.detail}) : super(key: key);

  @override
  State<VideoDetail> createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            //  Text(widget.detail.headline6),
            Text('remove')
          ])),
    );
  }
}
