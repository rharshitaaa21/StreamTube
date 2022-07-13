import 'package:flutter/material.dart';
import 'package:youtube/models/youtube_model.dart';
import 'package:youtube/screens/videodetail.dart';

class VideoList extends StatelessWidget {
  final List<YoutubeModel> listData;
  const VideoList({required this.listData});
  // const VideoList(Key? key, this.listData) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    return ListView.separated(
      itemBuilder: (ctx, idx) {
        if (deviceOrientation == Orientation.portrait) {
          return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => VideoDetail()));
              },
              child: _buildPortraitList(context, idx));
        } else {
          return InkWell(child: _buildLandscapeList(context, idx));
        }
      },
      separatorBuilder: (ctx, idx) => Divider(
        height: 1.0,
        color: Colors.grey,
      ),
      itemCount: listData.length,
    );
  }

  Widget _buildPortraitList(BuildContext context, int idx) {
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
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(8.0),
          dense: true,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(listData[idx].channelAvatar),
          ),
          title: Padding(
              child: Text(listData[idx].title), padding: EdgeInsets.all(8.0)),
          subtitle: Text(
              "${listData[idx].channelTitle}.${listData[idx].viewCount}.${listData[idx].publishedTime}"),
          trailing: Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Icon(
              Icons.more_vert,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLandscapeList(BuildContext context, int idx) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 336 / 1.5,
            height: 188.0 / 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  listData[idx].thumbNail,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  //   dense: true,
                  title: Padding(
                      child: Text(listData[idx].title),
                      padding: EdgeInsets.all(4.0)),
                  subtitle: Text(
                      "${listData[idx].channelTitle}.${listData[idx].viewCount}.${listData[idx].publishedTime}"),
                  trailing: Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Icon(
                      Icons.more_vert,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(listData[idx].channelAvatar),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
