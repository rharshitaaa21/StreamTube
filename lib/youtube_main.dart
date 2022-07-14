import 'package:flutter/material.dart';
import 'package:youtube/screens/home.dart';
import 'package:youtube/screens/trending.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      TrendingScreen(),
      Center(
        child: Text("Add"),
      ),
      Center(
        child: Text("Subscription"),
      ),
      Center(
        child: Text("Library"),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          'images/youtube_logo.png',
          width: 98.0,
          height: 22.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
              label: "Trending",
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              label: "Subscription",
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(label: "Inbox", icon: Icon(Icons.mail)),
            BottomNavigationBarItem(label: "Library", icon: Icon(Icons.folder)),
          ]),
    );
  }
}
