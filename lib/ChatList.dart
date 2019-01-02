import 'package:flutter/material.dart';

class chatlist extends StatelessWidget {
  var values = new List<String>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return InkWell(
            child: ListTile(
            
            title: Text("Shakil",style: TextStyle(color: Colors.black),),
            subtitle: Text("Hi, Good Morning"),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
          ),
          onTap:() => Navigator.pushNamed(context, "/chat"),
        
        );
      },
    );
  }
}

