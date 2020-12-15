import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaveritePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FaveriteState();
  }
}

class _FaveriteState extends State<FaveritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                )),
            title: Text('สถานที่โปรด'),
            backgroundColor: Colors.cyan[300],
            centerTitle: true,
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      size: 26.0,
                    ),
                  )
              ),
            ],
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}