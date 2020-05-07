import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unitedcommunities/navigationoptions.dart';
import 'dart:ui';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final String page;
  CollapsingListTile({ @required this.title, @required this.icon, @required this.page});
  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(widget.page);
            },
            child: Row(
              children: <Widget>[
                Icon(widget.icon, color: Colors.white, size:28.0),
                SizedBox(width: 20.0),
                Text(widget.title, style: TextStyle(color: Colors.white, fontFamily: 'Quicksand', fontWeight: FontWeight.bold))
              ],
            )
          ),
          //Text(widget.title, style: TextStyle(fontFamily: 'Quicksand', color:Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class InnerNavigationDrawer extends StatefulWidget {
  @override
  _InnerNavigationDrawerState createState() => _InnerNavigationDrawerState();
}

class _InnerNavigationDrawerState extends State<InnerNavigationDrawer> {
  double maxWidth = 280.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.indigo[900].withOpacity(0.8),
      width: 250.0,
      child: Column(
        children: <Widget>[
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                  color: Colors.black.withOpacity(0)
              )
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.transparent,
            child: Row (
                //child:Column(
                  children: <Widget>[
                    Container(
                        width:50, height:50,
                        margin: EdgeInsets.only(top:30,bottom: 10,),
                        decoration:BoxDecoration(
                            shape:BoxShape.circle,
                            image: DecorationImage(
                                image:NetworkImage("https://i.pinimg.com/originals/6b/89/be/6b89be9bec5213e087acd19f3e336b53.jpg",),
                                fit: BoxFit.fill
                            )
                        )
                    ),
                    SizedBox(width: 20.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 25.0),
                          Text('Hello,', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18, color:Colors.white),),
                          Text('Bob Marley',style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18, color:Colors.white),)
                      ]
                    )
                  ],
                //)
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context,counter){
                return CollapsingListTile(
                  title: innerNavigationItems[counter].title,
                  icon: innerNavigationItems[counter].icon,
                  page: innerNavigationItems[counter].page,
                );
              },
              itemCount: innerNavigationItems.length ,
            ),
          ),
        ],
      ),
    );
  }
}