import 'package:flutter/material.dart';
import 'package:youtube/screens/messages.dart';

// class InboxScreen extends StatelessWidget {
//    InboxScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Column(children: const <Widget>[
//          TabBar(
//             indicatorColor: Colors.black,
//             labelColor: Colors.black,
//             unselectedLabelColor: Colors.grey,
//             tabs: <Widget>[
//               Tab(
//                 text: "MESSAGES",
//               ),
//               Tab(
//                 text: "NOTIFICATIONS",
//               )
//             ]),
//         // Expanded(
//         //   child: TabBarView(children: <Widget>[
//         //     MessagesScreen(),
//         //     Text("Notifications"),
//         //   ]),
//         // ),
//           Expanded(
//             child: TabBarView(
//               children: <Widget>[
//                 MessagesScreen(),
//                 NotificationsScreen(),
//               ],
//             ),
//       ]),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_youtube_ui/screens/messages.dart';
// import 'package:flutter_youtube_ui/screens/notifications.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "MESSAGES",
              ),
              Tab(
                text: "NOTIFICATIONS",
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                MessagesScreen(),
                Text("Notifction"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
