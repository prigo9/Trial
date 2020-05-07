import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/innernavigationdrawer.dart';

class GalleryPage extends StatelessWidget {
  List<String> as = [
    'https://in.bookmyshow.com/entertainment-news/wp-content/uploads/2018/01/Events-In-Chennai-810x422.jpg',
    'https://media-exp1.licdn.com/dms/image/C4D1BAQFAC3o2eHS_vA/company-background_10000/0?e=2159024400&v=beta&t=EUdtqUGN2pXf17w9xlDLBdSI60wIgV4gI0W36q8NHto',
    'https://www.navis.com/contentassets/23cb5da482614ac686f01cc003b6a957/headerbanner_events.jpg?width=1920',    'https://lh3.googleusercontent.com/proxy/W0BP8Sbhmt37opKE4ZU_BehU5cWyJKJuLR9_X5Ru2Og6auEhG9j0smCrJAuYvPIaRXYRh9zdFlKLXuwqFqCSGhk2QOQzNEUBayS2n1Fa5TnFeAm_xQGiGBkJ',
    'https://www.australia.com/content/dam/assets/photograph/digital/1/7/7/d/s/2015776.jpg',
    'https://www.fairact.in/wp-content/uploads/2018/04/events-bg.jpg',
    'https://assets.bosch.com/media/global/research/meet_bosch_research/bosch-research-events-16x9.jpg',
    'https://m.economictimes.com/thumb/msid-74702612,width-1200,height-900,resizemode-4,imgsize-630698/8.jpg'
  ];

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
        child: Column(
          children: <Widget>[
              SizedBox(width:16.0,height:16.0),
             Text("NBA", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
            SizedBox(width:16.0),
            Container(
              color: Colors.white30,
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: as.map((String url) {
                    return GridTile(
                        child: Image.network(url, fit: BoxFit.cover));
                  }).toList()),
            ),SizedBox(width:40.0,height:40.0),
                      Text("TCS", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
              SizedBox(width:16.0),
              Container(
              color: Colors.white30,
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  childAspectRatio: 1.0,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children:as.map((String url) {
                    return GridTile(
                        child: Image.network(url, fit: BoxFit.cover));
                  }).toList()),
            )

          ],
        ),
      ),


    );
  }
}