import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  String page;
  NavigationModel({this.title, this.icon, this.page});
}

List<NavigationModel> innerNavigationItems = [
  NavigationModel(title: "Home", icon: Icons.home, page: '/homepage'),
  NavigationModel(title: "My Profile", icon: Icons.perm_identity, page: '/profilepage'),
  NavigationModel(title: "Member Directory", icon: Icons.import_contacts, page: '/memberspage'),
  NavigationModel(title: "Committees/Groups", icon: Icons.contacts, page: '/committeegroupspage'),
  NavigationModel(title: "Events", icon: Icons.label_important, page: '/eventspage'),
  NavigationModel(title: "Meetings", icon: Icons.insert_invitation, page: '/meetingspage'),
  NavigationModel(title: "Gallery", icon: Icons.collections, page: '/gallerypage'),
  NavigationModel(title: "Chat", icon: Icons.chat_bubble, page: '/chathomepage'),
  NavigationModel(title: "Opinion Polls", icon: Icons.insert_chart, page: '/opinionpollpage'),
  NavigationModel(title: "Contact Us", icon: Icons.contact_mail, page: '/contactuspage'),
  NavigationModel(title: "About Us", icon: Icons.info, page: '/aboutuspage'),
];

List<NavigationModel> outerNavigationItems = [
  NavigationModel(title: "Profile", icon: Icons.perm_identity, page: '/appprofile'),
  NavigationModel(title: "My Associations", icon: Icons.supervisor_account, page: '/myassociations'),
  NavigationModel(title: "About us", icon: Icons.adjust, page: '/aboutapp'),
];
