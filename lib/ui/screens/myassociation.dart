import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/screens/homepage.dart';
import 'package:unitedcommunities/ui/widgets/outernavigationdrawer.dart';

class MyAssociationPage extends StatefulWidget {
  @override
  _MyAssociationPageState createState() => new _MyAssociationPageState();
}

class _MyAssociationPageState extends State<MyAssociationPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: OuterNavigationDrawer(),
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),

      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter, end: Alignment.bottomCenter,
                      colors: [Colors.orangeAccent, Colors.orangeAccent[100]]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 145.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/6b/89/be/6b89be9bec5213e087acd19f3e336b53.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(height: 10.0),
                      Text( "BOB MARLEY", style: TextStyle( color: Colors.black, fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                      SizedBox( height: 10.0,),
                    ],
                  ),
                ),
              )
          ),
          SizedBox(height: 40.0),
          Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('MY ASSOCIATIONS', style: TextStyle( color: Colors.grey[600], fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 16.0),)
                ],
              )),
          SizedBox(height: 14.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('NBA', 'Where Amazing Happens', 'https://logoeps.com/wp-content/uploads/2011/05/nba-logo-vector-01.png', 1),
              _buildCard('Dollar Shave Club', 'Shave Time. Shave Money', 'https://upload.wikimedia.org/wikipedia/en/6/69/Dollar_shave_club_logo.png', 2),
              _buildCard('The Beer Society', 'Save Water! Drink Beer!', 'https://www.pngfind.com/pngs/m/672-6720847_save-water-class-lazyload-lazyload-mirage-featured-hd.png', 3),


            ],
          ),
          SizedBox(height: 30.0),
          Container(
              padding: EdgeInsets.only(left: 80.0, right: 80.0, bottom: 25.0),
              height: 60.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.orangeAccent, color: Colors.orangeAccent, elevation: 7.0,
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Center(
                    child: Text(
                      'LOGOUT',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String associationname, String tagline, String logolink, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Stack(
                children: <Widget>[
                  Container(
                    height: 65.0, width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(
                                logolink
                            )
                        )
                    ),
                  )
                ]),
            SizedBox(height: 8.0),
            Text(
              associationname,
              style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            SizedBox(height: 5.0),
            Text(
              tagline,
              style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 10.0, color: Colors.grey),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/homepage');
                        },
                        child: Center(
                          child: Text('LOGIN',
                            style: TextStyle(color: Colors.white, fontFamily: 'Quicksand', fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        )
                    )
                )
            )
          ],
        ),
        margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}