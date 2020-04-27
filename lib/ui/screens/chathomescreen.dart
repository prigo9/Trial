import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unitedcommunities/global.dart';

class ChatHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black45),
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0 ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("MY CHATS", textAlign: TextAlign.center, style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
                SizedBox(height: 20.0,),
                SizedBox(
                  height: 500.0,
                  child: ListView.builder(
                    itemCount: friendsList.length,
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            isThreeLine: true,
                            onLongPress: () {},
                            onTap: () => Navigator.of(context).pushNamed('chat'),
                            leading: Container(
                              width: 50, height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 3,),
                                boxShadow: [BoxShadow(color: Colors.white.withOpacity(.3), offset: Offset(0, 5), blurRadius: 25)],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: CircleAvatar(backgroundImage: NetworkImage(friendsList[i]['imgUrl']),),
                                  ),
                                  friendsList[i]['isOnline']
                                      ? Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 15, width: 15,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white, width: 3,),
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  )
                                      : Container(),
                                ],
                              ),
                            ),
                            title: Text("${friendsList[i]['username']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.indigo[900]),),
                            subtitle: Text("${friendsList[i]['lastMsg']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.black54),),
                            trailing: Container(
                              width: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      friendsList[i]['seen']
                                          ? Icon(Icons.check, size: 15,)
                                          : Container(height: 15, width: 15),
                                      SizedBox(width: 5.0),
                                      Text("${friendsList[i]['lastMsgTime']}", style: TextStyle(fontFamily: 'Quicksand'),)
                                    ],
                                  ),
                                  SizedBox(height: 5.0,),
                                  friendsList[i]['hasUnSeenMsgs']
                                      ? Container(
                                    alignment: Alignment.center, height: 25, width: 25,
                                    decoration: BoxDecoration(color: Colors.indigo[900], shape: BoxShape.circle,),
                                    child: Text("${friendsList[i]['unseenCount']}", style: TextStyle(fontFamily: 'Quicksand', color: Colors.white),),
                                  )
                                      : Container(height: 25, width: 25,),
                                ],
                              ),
                            ),
                          ),
                          Divider()
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
