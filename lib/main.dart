import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/screens/homepage.dart';
import 'package:unitedcommunities/ui/screens/login.dart';
import 'package:unitedcommunities/ui/screens/signup.dart';
import 'package:unitedcommunities/ui/screens/myassociation.dart';
import 'package:unitedcommunities/ui/screens/chathomescreen.dart';
import 'package:unitedcommunities/ui/screens/chatscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/myassociations': (BuildContext context) => new MyAssociationPage(),
        '/homepage': (BuildContext context) => new HomePage(),
        'chat': (ctx) => ChatScreen(),
        '/chathomepage': (BuildContext context) => new ChatHomeScreen()
      },
      home: new LoginPage(),
    );
  }
}