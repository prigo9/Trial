import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Home/NewsFeed", icon: Icons.home),
  NavigationModel(title: "My Profile", icon: Icons.perm_identity),
  NavigationModel(title: "Member Directory", icon: Icons.import_contacts ),
  NavigationModel(title: "Committees/Groups", icon: Icons.contacts),
  NavigationModel(title: "Events", icon: Icons.label_important ),
  NavigationModel(title: "Meetings", icon: Icons.insert_invitation ),
  NavigationModel(title: "Gallery", icon: Icons.collections),
  NavigationModel(title: "Chat", icon: Icons.chat_bubble),
  NavigationModel(title: "Opinion Polls", icon: Icons.insert_chart ),
  NavigationModel(title: "About us", icon: Icons.info),
];

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  CollapsingListTile({ @required this.title, @required this.icon });
  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Row(
          children: <Widget>[
            Icon(widget.icon,color: Colors.white,size:28.0),
            SizedBox(width:10.0),
            Text(widget.title,style:TextStyle(
                color:Colors.white,
               fontWeight: FontWeight.bold
            )
            )
          ],
      ),
    );
  }
}

class nav_drawer extends StatefulWidget {
  @override
  _nav_drawerState createState() => _nav_drawerState();
}

class _nav_drawerState extends State<nav_drawer> {
  double maxWidth=250;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.grey[800],
      width: 250.0,
      child: Column(
        children: <Widget>[
           Container(
             padding: EdgeInsets.all(20),
             color:Colors.orangeAccent[100],
             child: Center(
               child:Column(
                  children: <Widget>[
                      Container(
                          width:100,
                          height:100,
                          margin: EdgeInsets.only(
                            top:30,bottom: 10,
                          ),
                          decoration:BoxDecoration(
                            shape:BoxShape.circle,
                            image: DecorationImage(
                              image:NetworkImage(
                                "https://i.pinimg.com/originals/6b/89/be/6b89be9bec5213e087acd19f3e336b53.jpg",
                              ),
                              fit: BoxFit.fill
                            )
                          )
                      ),
                    Text('Bob Marley',style: TextStyle(fontSize: 22,color:Colors.white),)
                  ],
               )
             ),
           ),
           Expanded(
            child: ListView.builder(
                itemBuilder: (context,counter){
              return CollapsingListTile(
                title:navigationItems[counter].title,
                icon:navigationItems[counter].icon,
              );
            },
            itemCount: navigationItems.length ,),
          )
        ],
      ),
    );
  }
}
