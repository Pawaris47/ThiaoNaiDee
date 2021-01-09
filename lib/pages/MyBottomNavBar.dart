import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.only(top: 10, bottom: 30),
      color: Colors.cyan[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.book),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home-page');
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.star),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/faverite-page');
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.mapMarker),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/map-page');
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.shareAlt),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/social-page');
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.idCard),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/user-page');
              }),
        ],
      ),
    );
  }
}