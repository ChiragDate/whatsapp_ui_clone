import 'package:flutter/material.dart';

import 'CallsScreen.dart';
import 'CameraScreen.dart';
import 'ChatScreen.dart';
import 'StatusScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState(){
    super.initState();
     _tabController=TabController(vsync: this,length: 4,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
         title: Text('Whatsapp'),
          elevation: 0.7,
        bottom: TabBar(
    controller: _tabController,
    tabs:[
    Icon(Icons.add_a_photo),
    Text('Chats'),
    Text('Status'),
    Text('Calls'),
    ]
        ),
    ),
    body:TabBarView(
      controller: _tabController,
      children: [
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallsScreen(),
      ],
    ),
    ));
  }
}