// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:youtube/models/youtube_model.dart';
// import 'package:youtube/video_list.dart';

// class VideoDetail extends StatefulWidget {
//   final YoutubeModel detail;
//   const VideoDetail({Key? key, required this.detail}) : super(key: key);

//   @override
//   State<VideoDetail> createState() => _VideoDetailState();
// }

// class _VideoDetailState extends State<VideoDetail> {
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> _layouts = [
//       _videoInfo(),
//       _channelInfo(),
//       _moreinfo(),
//       VideoList(
//         listData: youtubeData,
//         isMiniList: true,
//       ),
//     ];
//     if (MediaQuery.of(context).orientation == Orientation.landscape) {
//       _layouts.clear();
//     }
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           _buildvideoPlayer(context),
//           Expanded(
//             child: ListView(
//               children: _layouts,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildvideoPlayer(BuildContext context) {
//     return Container(
//        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).orientation == Orientation.portrait
//           ? 200.0
//           : MediaQuery.of(context).size.height- MediaQuery.of(context).padding.top,
//       decoration: BoxDecoration(
//           image: DecorationImage(image: NetworkImage(widget.detail.thumbNail), fit: BoxFit.cover)),
//     );
//   }

//   Widget _videoInfo() {
//     return Column(children: <Widget>[
//       ListTile(
//         title: Text(widget.detail.title),
//         subtitle: Text(widget.detail.viewCount),
//         trailing: Icon(Icons.more_vert),
//       ),
//       Container(
//         padding: EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             _buildButtonColumn(Icons.thumb_up, widget.detail.likeCount),
//             _buildButtonColumn(Icons.thumb_down, widget.detail.dislikeCount),
//             _buildButtonColumn(Icons.share, "Share"),
//             _buildButtonColumn(Icons.cloud_download, "Download"),
//             _buildButtonColumn(Icons.playlist_add, "Save"),
//           ],
//         ),
//       )
//     ]);

//     return Text("XXX");
//   }

//   Widget _buildButtonColumn(IconData icon, String text) {
//     return Column(
//       children: <Widget>[
//         Container(
//           padding: EdgeInsets.only(bottom: 8.0),
//           child: Icon(
//             icon,
//             color: Colors.grey[700],
//           ),
//         ),
//         Text(
//           text,
//           style: TextStyle(color: Colors.grey[700]),
//         ),
//       ],
//     );
//   }

//   Widget _channelInfo() {
//     return Container(
//         //mainAxisSize: MainAxisSize.min,
//         decoration: BoxDecoration(
//           border: Border(
//             top: BorderSide(color: Colors.grey, width: 0.5),
//             bottom: BorderSide(color: Colors.grey, width: 0.5),
//           ),
//         ),
//         child: Row(children: <Widget>[
//           Expanded(
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(widget.detail.channelAvatar),
//               ),
//               subtitle: const Text("100000 subscribers"),
//             ),
//           ),
//           FlatButton.icon(
//             onPressed: () {},
//             label: const Text(
//               "SUBSCRIBE",
//               style: TextStyle(color: Colors.red),
//             ),
//             icon: const Icon(
//               Icons.play_circle_fill,
//               color: Colors.red,
//             ),
//           )
//         ]));
//   }

//   Widget _moreinfo() {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 16.0,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text("Up next"),
//           Switch(value: true, onChanged: (_) {})
//         ],
//       ),
//     );
//   }

// }

import 'package:flutter/material.dart';
import '../models/youtube_model.dart';

import 'package:youtube/video_list.dart';

class VideoDetail extends StatefulWidget {
  final YoutubeModel detail;

  const VideoDetail({Key? key, required this.detail}) : super(key: key);

  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _layouts = [
      _videoInfo(),
      _channelInfo(),
      _moreInfo(),
      VideoList(
        listData: youtubeData,
        isMiniList: true,
      ),
    ];

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      _layouts.clear();
    }

    return Scaffold(
        body: Column(
      children: <Widget>[
        _buildVideoPlayer(context),
        Expanded(
          child: ListView(
            children: _layouts,
          ),
        )
      ],
    ));
  }

  Widget _buildVideoPlayer(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? 200.0
          : MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.detail.thumbNail), fit: BoxFit.cover)),
    );
  }

  Widget _videoInfo() {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(widget.detail.title),
          subtitle: Text(widget.detail.viewCount),
          trailing: Icon(Icons.arrow_drop_down),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildButtonColumn(Icons.thumb_up, widget.detail.likeCount),
              _buildButtonColumn(Icons.thumb_down, widget.detail.dislikeCount),
              _buildButtonColumn(Icons.share, "Share"),
              _buildButtonColumn(Icons.cloud_download, "Download"),
              _buildButtonColumn(Icons.playlist_add, "Save"),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildButtonColumn(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(
            icon,
            color: Colors.grey[700],
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    );
  }

  Widget _channelInfo() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(widget.detail.channelAvatar),
              ),
              title: Text(
                widget.detail.channelTitle,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("15,000 subscribers"),
            ),
          ),
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_filled,
                color: Colors.red,
              ),
              label: Text(
                "SUBSCRIBE",
                style: TextStyle(color: Colors.red),
              ))
        ],
      ),
    );
  }

  Widget _moreInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: Text("Up next")),
          Text("Autoplay"),
          Switch(
            onChanged: (c) {},
            value: true,
          ),
        ],
      ),
    );
  }
}
