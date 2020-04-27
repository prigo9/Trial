import 'package:flutter/material.dart';
import 'package:unitedcommunities/ui/screens/aboutapp.dart';
import 'package:unitedcommunities/ui/screens/aboutus.dart';
import 'package:unitedcommunities/ui/screens/appprofile.dart';
import 'package:unitedcommunities/ui/screens/committeegroups.dart';
import 'package:unitedcommunities/ui/screens/contactus.dart';
import 'package:unitedcommunities/ui/screens/events.dart';
import 'package:unitedcommunities/ui/screens/gallery.dart';
import 'package:unitedcommunities/ui/screens/homepage.dart';
import 'package:unitedcommunities/ui/screens/login.dart';
import 'package:unitedcommunities/ui/screens/meetings.dart';
import 'package:unitedcommunities/ui/screens/member.dart';
import 'package:unitedcommunities/ui/screens/opinionpoll.dart';
import 'package:unitedcommunities/ui/screens/profile.dart';
import 'package:unitedcommunities/ui/screens/signup.dart';
import 'package:unitedcommunities/ui/screens/myassociation.dart';
import 'package:unitedcommunities/ui/screens/chathomescreen.dart';
import 'package:unitedcommunities/ui/screens/chatscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => new HomePage(),
        '/profilepage': (BuildContext context) => new ProfilePage(),
        '/memberspage': (BuildContext context) => new MembersPage(),
        '/committeegroupspage': (BuildContext context) => new CommitteeGroupsPage(),
        '/eventspage': (BuildContext context) => new EventsPage(),
        '/meetingspage': (BuildContext context) => new MeetingsPage(),
        '/gallerypage': (BuildContext context) => new GalleryPage(),
        '/chathomepage': (BuildContext context) => new ChatHomeScreen(),
        'chat': (ctx) => ChatScreen(),
        '/opinionpollpage': (BuildContext context) => new OpinionPollPage(),
        '/contactuspage': (BuildContext context) => new ContactUsPage(),
        '/aboutuspage': (BuildContext context) => new AboutUsPage(),

        '/appprofile': (BuildContext context) => new AppProfilePage(),
        '/myassociations': (BuildContext context) => new MyAssociationPage(),
        '/aboutapp': (BuildContext context) => new AboutAppPage(),

        '/signup': (BuildContext context) => new SignupPage(),
      },
      home: new LoginPage(),
    );
  }
}