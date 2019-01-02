import 'package:flutter/material.dart';
import 'package:whatsapp/ChatList.dart';

class MainMenu extends StatefulWidget {


  List xs = ["asd", "dss"]; 

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainMenuState();
  }
}

class MainMenuState extends State<MainMenu>
    with SingleTickerProviderStateMixin {
  int index = 0;
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget TabItems() {
    return new TabBar(
//          labelColor: Colors.amber,
      indicatorColor: Colors.white,
  
      controller: controller,
      tabs: <Widget>[
        new Tab(icon: Icon(Icons.camera_alt)),
        new Tab(
          text: "CHATS",
        ),
        new Tab(
          text: "STATUS",
        ),
        new Tab(
          text: "CALLS",
        ),
      ],
    );
  }

  @override
  Widget TabItemsView()
  {
    return new TabBarView(controller: controller, children: <Widget>[ 
          new chatlist(),
          new chatlist(),
          new chatlist(),
          new chatlist(),
      ]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Color(0xFFB075e54),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(
            width: 12.0,
          ),

          PopupMenuButton(itemBuilder: (BuildContext context) {},),
          SizedBox(
            width: 12.0,
          ),
        ],
        bottom: TabItems(),
      ),
      body: TabItemsView(),

      floatingActionButton: FloatingActionButton(
        elevation: 4.0,
        backgroundColor: Colors.green,
        child: Icon(Icons.message),

      ),
    );
  }
}
