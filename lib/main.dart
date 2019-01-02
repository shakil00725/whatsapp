import 'package:flutter/material.dart';
import 'package:whatsapp/MainMenu.dart';
import 'package:whatsapp/chat.dart';

void main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  theme: ThemeData.light(),
  initialRoute: "/",
  routes: {
        '/': (context) => MainMenu(),
        '/chat': (context) => chat(),
    },


));

