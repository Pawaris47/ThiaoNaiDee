import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ThiaoNaiDee/pages/MyBottomNavBar.dart';

class SocialPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SocialState();
  }
}

class _SocialState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            )),
            title: Text('แชร์'),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.cyan[200],
            centerTitle: true,
          )),
      body: Container(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}