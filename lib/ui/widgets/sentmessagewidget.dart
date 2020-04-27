import 'package:flutter/material.dart';
import 'package:unitedcommunities/global.dart';

class SentMessageWidget extends StatelessWidget {
  final int i;
  const SentMessageWidget({
    Key key,
    this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text("${messages[i]['time']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.blueAccent)),
          SizedBox(width: 15),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .7),
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            decoration: BoxDecoration(
              color: Colors.indigo[900],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15), bottomLeft: Radius.circular(15),),
            ),
            child: Text("${messages[i]['message']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.normal, fontSize: 16.0, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}