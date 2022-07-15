import 'package:flutter/material.dart';
import 'package:youtube/models/youtube_model.dart';
import 'package:youtube/video_list.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildRecent(),
        _buildPersonal(context),
        _buildOffline(),
      ],
    );
  }

  BoxDecoration _buildBottomBorder() => BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey),
        ),
      );

  Widget _buildRecent() {
    return Container(
      height: 205.0,
      decoration: _buildBottomBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text("Recent"),
          ),
          Expanded(
            child: VideoList(
              listData: youtubeData,
              isHorizontalList: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonal(BuildContext context) {
    List<Map> items = [
      {"name": "History", "icon": Icon(Icons.history)},
      {"name": "My Videos", "icon": Icon(Icons.video_library)},
      {
        "name": "Watch Later",
        "icon": Icon(Icons.watch_later),
        "extra": "25 unwatched videos"
      },
    ];

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: _buildBottomBorder(),
      child: Column(
        children: items
            .map((i) => ListTile(
                  leading: i["icon"],
                  title: i["extra"] == null
                      ? Text(i["name"])
                      : Row(
                          children: <Widget>[
                            Text(i["name"]),
                            Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                i["extra"],
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                          ],
                        ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildOffline() {
    return Container(
      decoration: _buildBottomBorder(),
      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Available offline"),
          ListTile(
            leading: Icon(Icons.file_download),
            title: Text("Downloads"),
            subtitle: Text("20 videos"),
            trailing: Icon(
              Icons.check_circle,
              color: Colors.blue[700],
            ),
          )
        ],
      ),
    );
  }
}
