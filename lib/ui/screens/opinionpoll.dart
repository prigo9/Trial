import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/innernavigationdrawer.dart';
import 'package:unitedcommunities/ui/screens/model.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:io';
class OpinionPollPage extends StatefulWidget {


  @override
  _OpinionPollPageState createState() => _OpinionPollPageState();
}

int _currentIndex = 0;
int max_qeus=4;

class _OpinionPollPageState extends State<OpinionPollPage> {

  final List<dynamic> options = ["Yes","No","Not stated correctly","Could be a reason"];
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
      body:Stack(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor
              ),
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: Text("${_currentIndex+1}"),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Text('Do you think the increasing population is responsible for the exconomic',
                        softWrap: true,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0),
                Flexible(
                  child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context,index){
                      return  ListTile(
                          title:Text(options[index])
                      );


                    },

                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: RaisedButton(
                      child: Text( _currentIndex == (max_qeus - 1) ? "Submit" : "Next"),
                      onPressed: _nextSubmit,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _nextSubmit(){
    if( _currentIndex < (max_qeus - 1)){
      setState(() {
        _currentIndex++;
      });
    }else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => OpinionPollPage()
      ));
    }
  }

}

