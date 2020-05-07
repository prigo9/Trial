import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/innernavigationdrawer.dart';

class EventsPage extends StatelessWidget {
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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("EVENTS", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
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
              hintText: "Search Event",
              fillColor: Colors.white),
        ),
            SizedBox(height: 18.0),
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.network(               'https://www.holidify.com/images/cmsuploads/compressed/1516704233Soma2-1600X900_20190123222123.jpg',
                    ),
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sula Fest 2020'),
                      subtitle: Text('Music, Fine Dine, Wine & Everything Oh-So-Fine'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child:  Text('BUY TICKETS' ,style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.indigo[900],)),
                          onPressed: () { /* ... */ },
                        ),
                        FlatButton(
                          child:  Text('VIEW PAGE' ,style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.indigo[900],)),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),           SizedBox(height: 18.0),
            Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.network(               'https://www.holidify.com/images/cmsuploads/compressed/1516704233Soma2-1600X900_20190123222123.jpg',

                    ),
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Sula Fest 2020'),
                      subtitle: Text('Music, Fine Dine, Wine & Everything Oh-So-Fine'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text('BUY TICKETS' ,style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.indigo[900],)),
                          onPressed: () { /* ... */ },
                        ),
                        FlatButton(
                          child: Text('VIEW PAGE' ,style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.indigo[900],)),
                          onPressed: () { /* ... */ },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
      persistentFooterButtons: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          RaisedButton(
          onPressed: null,
          child: Text('Upcoming',style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
        ),
        RaisedButton(
          onPressed: null,
          child: Text('Past',style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
        ),
      ],
    )
    ],
    );
  }
}