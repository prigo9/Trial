import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/outernavigationdrawer.dart';

class AboutAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      drawer: OuterNavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("ABOUT US", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),),
            SizedBox(height: 18.0),
            Row(
              children: <Widget>[
                SizedBox(width: 5.0)
              ],
            ),
          ],
        ),
      ),
    );
  }
}