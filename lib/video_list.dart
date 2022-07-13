import 'package:flutter/material.dart';
import 'package:youtube/models/youtube_model.dart';

class VideoList extends StatelessWidget {
  final listData;
  const VideoList({this.listData});
  // const VideoList(Key? key, this.listData) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, idx) {
        return Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    listData[idx].thumbNail,
                  ),
                ),
              ),
            )
          ],
        );
      },
      separatorBuilder: (ctx, idx) => Divider(
        height: 1.0,
        color: Colors.grey,
      ),
      itemCount: listData.length,
    );
  }
}
