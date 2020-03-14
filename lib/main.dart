import 'package:flutter/material.dart';
import 'package:youtube_ui_flutter/config/config.dart';
import 'package:youtube_ui_flutter/tabs/HomeTab.dart';

import 'models/video_model.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List tabs = [
    HomeTab(),
    HomeTab(),
    HomeTab(),
    HomeTab(),
    HomeTab(),
  ];

  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        brightness: Brightness.light,
        title: Text(
          "YouTube",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(
              "assets/yt_icon_rgb.png"
            ),
          ),
        ),
        actions: <Widget>[

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search, color: Colors.black,),
          ),

          Container(
            padding: EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1557296387-5358ad7997bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=694&q=80"
                ),
                fit: BoxFit.cover,
                width: 50,
              ),
            ),
          ),

        ],
      ),
      body: tabs[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            title: Text("Videos")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            title: Text("Videos")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text("Videos")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            title: Text("Videos")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Videos")
          ),
        ],
        onTap: (i) {
          setState(() {
            currentTab = i;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        currentIndex: currentTab,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}