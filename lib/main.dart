import 'package:flutter/material.dart';
import 'package:unitedcommunities/homepage.dart';
import 'login.dart';
import 'signup.dart';
import 'myassociation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/myassociations': (BuildContext context) => new MyAssociationPage(),
        '/homepage': (BuildContext context) => new HomePage()
      },
      home: new LoginPage(),
    );
  }
}