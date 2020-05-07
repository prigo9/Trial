import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/innernavigationdrawer.dart';

class ContactUsPage extends StatelessWidget {
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
            Text("CONTACT US", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
            SizedBox(height: 18.0),
            Card(
                color: Colors.indigo[900],
                elevation:3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex:2,
                          child:Icon(
                            Icons.home, color: Colors.white,
                          )
                      ),
                      Expanded(
                          flex:8,
                          child:Text('Plot No 3, Flat NO.A/30 Laxmi Nivas,3rd Floor ,Near sadhna School,Sion(W) Mumbai-400601 ', style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),)
                      )
                    ],
                  ),
                )
            ),SizedBox(height: 8.0),
            Card(
                color:  Colors.indigo[900],
                elevation:3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex:2,
                          child:Icon(
                            Icons.phone, color: Colors.white,
                          )
                      ),
                      Expanded(
                          flex:8,
                          child:Text(' 9785964852 /  36485789658 ', style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),)
                      )
                    ],
                  ),
                )
            ),SizedBox(height: 8.0),
            Card(
                color:  Colors.indigo[900],
                elevation:3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex:2,
                          child:Icon(
                            Icons.mail, color: Colors.white,
                          )
                      ),
                      Expanded(
                          flex:8,
                          child:Text(' awsed@unitedCommunities.com ', style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),)
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: 8.0),
            Card(

                elevation:3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              child:Image.asset('assets/map.png'  )
            )
          ],
        ),
      ),
    );
  }
}