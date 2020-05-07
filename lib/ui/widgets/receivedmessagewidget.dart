import 'package:flutter/material.dart';
import 'package:unitedcommunities/global.dart';

import 'mycircleavatar.dart';
class ReceivedMessagesWidget extends StatelessWidget {
  final int i;
  const ReceivedMessagesWidget({
    Key key,
    @required this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        children: <Widget>[
          MyCircleAvatar(imgUrl: messages[i]['contactImgUrl'],),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("${messages[i]['contactName']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.blueAccent[700])),
              Container(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .6),
                padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                decoration: BoxDecoration(
                  color: Color(0xfff8f9ff),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),),
                ),
                child: Text("${messages[i]['message']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.normal, fontSize: 16.0, color: Colors.indigo[900])),
              ),
            ],
          ),
          SizedBox(width: 15),
          Text("${messages[i]['time']}", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.blueAccent)),
        ],
      ),
    );
  }
}
