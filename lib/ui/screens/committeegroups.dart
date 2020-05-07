import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/innernavigationdrawer.dart';

class CommitteeGroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: InnerNavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          )
        ],
      ),
      body:  SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Committee", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
            SizedBox(height: 18.0),
        TextField(
          decoration: new InputDecoration(
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              filled: true,
              hintStyle: new TextStyle(color: Colors.grey[800]),
              hintText: "Search Committee",
              fillColor: Colors.white),
        ),
            SizedBox(height: 18.0),
            Center(
              child: Card(

                color:Colors.indigo[50] ,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage('https://www.holidify.com/images/cmsuploads/compressed/1516704233Soma2-1600X900_20190123222123.jpg'),
                  backgroundColor: Colors.transparent,
              ),
                       Expanded(
                         flex: 6,
                         child:   ListTile(

                           title: Text('Special Committee ',style: TextStyle( fontFamily: 'Quicksand',  fontSize: 18.0, color: Colors.indigo[900],fontWeight: FontWeight.bold,)),
                            subtitle: Text('60 Members',style: TextStyle( fontFamily: 'Quicksand',  fontSize: 14.0, color: Colors.indigo[900] ,fontWeight: FontWeight.bold ),),
                          )
                       ),
                       Expanded(
                          flex:4,
                          child:    Column(
                        children: <Widget>[

                             FlatButton(
                         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                        ),
                             color:Colors.indigo[900],
                            child:  Text('Exit Group' ,style: TextStyle( fontFamily: 'Quicksand', fontSize: 12.0, color: Colors.white,)),
                            onPressed: () { /* ... */ },
                          ),
                              FlatButton(
                         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                        ),
                             color:Colors.indigo[900],
                            child:  Text('Chat' ,style: TextStyle( fontFamily: 'Quicksand', fontSize: 12.0, color: Colors.white,)),
                            onPressed: () { /* ... */ },
                          ),


                        ],
                      ),
                       ),


                    ],
                  ),
                ),
              ),
            ), SizedBox(height: 8.0),
            
                        Center(
              child: Card(
                color:Colors.indigo[50] ,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: <Widget>[
                      CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage('https://www.holidify.com/images/cmsuploads/compressed/1516704233Soma2-1600X900_20190123222123.jpg'),
                  backgroundColor: Colors.transparent,
              ),
                       Expanded(
                         flex: 6,
                         child:   ListTile(

                           title: Text('Regional Congress',style: TextStyle( fontFamily: 'Quicksand',  fontSize: 18.0, color: Colors.indigo[900],fontWeight: FontWeight.bold,),),
                            subtitle: Text('50 Members',style: TextStyle( fontFamily: 'Quicksand',  fontSize: 14.0, color: Colors.indigo[900],fontWeight: FontWeight.bold,),),
                          )
                       ),
                       Expanded(
                          flex:4,
                          child:    Column(
                        children: <Widget>[

                             FlatButton(
                         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                        ),
                             color:Colors.indigo[900],
                            child:  Text('Exit Group' ,style: TextStyle( fontFamily: 'Quicksand', fontSize: 12.0, color: Colors.white,)),
                            onPressed: () { /* ... */ },
                          ),
                              FlatButton(
                         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                        ),
                             color:Colors.indigo[900],
                            child:  Text('Chat' ,style: TextStyle( fontFamily: 'Quicksand', fontSize: 12.0, color: Colors.white,)),
                            onPressed: () { /* ... */ },
                          ),


                        ],
                      ),
                       ),


                    ],
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search member'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Create group'),
          ),
        ],
        selectedItemColor: Colors.indigo[900],
      ),

    );
  }
}