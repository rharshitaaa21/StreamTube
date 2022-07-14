import 'package:flutter/material.dart';

// class MessagesScreen extends StatefulWidget {
//   const MessagesScreen({Key? key}) : super(key: key);

//   @override
//   State<MessagesScreen> createState() => _MessagesScreenState();
// }

// class _MessagesScreenState extends State<MessagesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         _buildTopButton(),
//         _buildPeople(),
//         _buildtocallaction()
//       ],
//     );
//   }

//   Widget _buildTopButton() {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(color: Colors.grey),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           FlatButton(
//             onPressed: () {},
//             child: Text("Friend"),
//             textColor: Colors.blue,
//           ),
//           FlatButton(
//             onPressed: () {},
//             child: Text("New Group"),
//             textColor: Colors.blue,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPeople() {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0),
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 const Text("You may know "),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.close),
//                 ),
//               ]),
//         ),
//         Container(
//           height: 140.0,
//           padding: const EdgeInsets.only(bottom: 16.0),
//           decoration: BoxDecoration(
//               border: Border(bottom: BorderSide(color: Colors.grey))),
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: <Widget>[
//               _buildAddPerson("Harshita Raghav"),
//               _buildAddPerson("Harshita Raghav"),
//               _buildAddPerson("Harshita Raghav"),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildAddPerson(String name) {
//     return Container(
//       width: 80.0,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Icon(
//             Icons.account_circle,
//             size: 50.0,
//           ),
//           Text(
//             name,
//             softWrap: true,
//           ),
//           Container(
//             height: 50.0,
//             width: 30.0,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.blue),
//               color: Colors.blue[100],
//               borderRadius: BorderRadius.circular(4.0),
//             ),
//             child: IconButton(
//               icon: Icon(
//                 Icons.person_add,
//                 size: 20.0,
//               ),
//               padding: const EdgeInsets.only(bottom: 8.0),
//               onPressed: () {},
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildtocallaction() {
//     return Container(
//       child: Column(children: <Widget>[
//         Image(
//           image: NetworkImage(
//             "images/project..jfif",
//           ),
//           width: 250.0,
//         ),
//         Text(
//           "Get started by adding friends",
//           style: Theme.of(context).textTheme.titleMedium,
//         ),
//         Text(
//           "Your chats would show up here ",
//           style: Theme.of(context).textTheme.caption,
//         ),
//         FlatButton(
//           onPressed: () {},
//           child: Text("ADD FRIENDS"),
//           color: Colors.blue[800],
//         ),
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen>
    with AutomaticKeepAliveClientMixin<MessagesScreen> {
  bool _isVisible = true;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTopButtons(),
        _isVisible ? _buildPeople() : SizedBox(),
        _buildCallToAction(),
      ],
    );
  }

  Widget _buildTopButtons() {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text("FRIENDS"),
            onPressed: () {},
            textColor: Colors.blue,
          ),
          FlatButton(
            child: Text("NEW GROUP"),
            onPressed: () {},
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _buildPeople() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("You may know"),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _isVisible = false;
                  });
                },
              )
            ],
          ),
        ),
        Container(
          height: 140.0,
          padding: const EdgeInsets.only(bottom: 16.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildAddPerson("James Blunt"),
              _buildAddPerson("Daddy Yankee"),
              _buildAddPerson("Kanye West"),
              _buildAddPerson("Jide Kosoko"),
              _buildAddPerson("Usain Bolt"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAddPerson(String name) {
    return Container(
      width: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.account_circle,
            size: 50.0,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.0),
          ),
          Container(
            width: 50.0,
            height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.person_add,
                  size: 20.0,
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
                onPressed: () {}),
          )
        ],
      ),
    );
  }

  Widget _buildCallToAction() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Image.asset(
              "images/project.png",
              fit: BoxFit.cover,
            ),
            width: 250.0,
          ),
          Text(
            "Get started by adding friends",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
            child: Text(
              "Your chats would show up here",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          FlatButton(
            child: Text("ADD FRIENDS"),
            color: Colors.blue[600],
            textColor: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
