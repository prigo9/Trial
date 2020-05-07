import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/widgets/innernavigationdrawer.dart';
import 'package:flip_card/flip_card.dart';

class ProfilePage extends StatelessWidget {
  static const ts = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    decoration: TextDecoration.underline,
  );
  static const ts1 = TextStyle(
    fontFamily: 'Quicksand',
    fontSize: 14,
    color: Colors.white,
  );

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
            Text("MY PROFILE", style: TextStyle( fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.indigo[900]),),
            SizedBox(height: 18.0,),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(color: Colors.indigo[900], borderRadius: BorderRadius.circular(15.0),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("MY ASSOCIATION CARD",style: TextStyle(fontFamily: 'Quicksand', fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white,),),

              SizedBox(height:32.0,width:32.0,),
              FlipCard(
             direction: FlipDirection.HORIZONTAL, // default
             front:  Column(
            children:<Widget>[
              SizedBox(height:16.0,width:16.0,),
              Row(
                  children:<Widget>[
                     Expanded(
                      flex:2,                    child:Image.network('https://jobs.insightsassociation.org/headers/cc/responsive/partner_lib/12109/img/logo-dark-12109.png')
                  ),Spacer(flex:2),
                    Expanded(
                    flex:3,
                    child:ClipRRect(
                       borderRadius: BorderRadius.circular(16.0),
                      child:Image.network('https://www.thehrdigest.com/wp-content/uploads/2019/10/Employee-Proposition-Value-EVP-Creating.jpg')
                    ))   
                    
                  ]           
                ),
              
                SizedBox(height:32.0,width:32.0,),
                 Row(
    
                   children:<Widget>[
                        Expanded(
                          flex:1,
                          child:Text('United Association',style:ts),
                        ),Expanded(
                          flex:1,
                          child:Text('Theon GreyJoy' ,style:ts),
                        )
                          
                        
                   ]
                 ), SizedBox(height:16.0,width:16.0,),
                 Row(
                    children:<Widget>[
                                         Expanded(
                    flex:1,
                     child:Column(
                        children:<Widget>[

                          Text('wdfuscbk1345,Jane Foster' ,style:ts1),
                          Text('asgard ,Realm ' ,style:ts1 ),
                          Text('Norse Mythology' ,style:ts1)
                        ]
                     )
                   ),
                   Expanded(
                     flex:1,
                                          child:Column(
                        children:<Widget>[
                          Text('Founder' ,style:TextStyle(fontFamily: 'Quicksand', fontSize: 16, color: Colors.white,)),
                          Row(
                          children:<Widget>[
                              Icon(Icons.phone ,color:Colors.white),
                             Text('1234567 '  ,style:ts1),
                          ]
                          ),
                          Row(
                          children:<Widget>[
                              Icon(Icons.mail ,color:Colors.white),
                               Text('Norse Mythology' ,style:ts1)                            
                          ]
                          ),

                        ]
                     )
                   )
                      
                    ]
                 )
              
              
             

            ]
             
        )  ,
            back: Column(children: <Widget>[
        SizedBox(
          height: 16.0,
          width: 16.0,
        ),
        Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: Image.network(
                  'https://jobs.insightsassociation.org/headers/cc/responsive/partner_lib/12109/img/logo-dark-12109.png')),
          Spacer(flex: 2),
          Expanded(
              flex: 3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                      'https://www.thehrdigest.com/wp-content/uploads/2019/10/Employee-Proposition-Value-EVP-Creating.jpg')))
        ]),
        SizedBox(
          height: 32.0,
          width: 32.0,
        ),
        Row(children: <Widget>[
          Expanded(
            flex: 1,
            child: Text('Founder', style: ts),
          ),
          Expanded(
            flex: 1,
            child: Text('Theon GreyJoy', style: ts),
          )
        ]),
        SizedBox(
          height: 16.0,
          width: 16.0,
        ),
        Row(children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(children: <Widget>[
                Text('Membership Type:  LifeTime ', style: ts1),
                Text('Membership Tenure : 2021', style: ts1),
                Text('About me: Son on Tywin GreyJoy ', style: ts1)
              ])),
          Expanded(
              flex: 1,
              child: Column(children: <Widget>[
                Text('Founder',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 16,
                      color: Colors.indigo[900],
                    )),
                Row(children: <Widget>[
                  Icon(Icons.calendar_today ,color:Colors.white),
                  Text('DOB:   1234567 ', style: ts1),
                ]),
                Row(children: <Widget>[
                  Icon(Icons.calendar_today, color:Colors.white),
                  Text('Anny:  1234567', style: ts1)
                ]),
              ]))
        ])
      ])  
            )      

           
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
