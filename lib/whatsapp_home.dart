import 'package:dwhatsapp/pages/call_screen.dart';
import 'package:dwhatsapp/pages/camera_screen.dart';
import 'package:dwhatsapp/pages/chat_screen.dart';
import 'package:dwhatsapp/pages/status_screen.dart';
import 'package:flutter/material.dart';



class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1,length: 4 );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon:Icon(Icons.camera_alt),),
            Tab(text:"CHATS"), 
            Tab(text:"STATUS"),
            Tab(text:"CALLS"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding:EdgeInsets.symmetric(horizontal: 5.0) ,),
          Icon(Icons.more_vert )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),

        ],)  ,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white  ,),
        onPressed: ()=>print("open"),
      ),
    );
  }
}

