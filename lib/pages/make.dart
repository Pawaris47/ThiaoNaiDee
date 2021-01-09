import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MakeState();
  }
}

class _MakeState extends State<MakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Trip'),
        backgroundColor: Colors.cyan[200],
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'Trip Name'),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 10, 30),
                  child: SizedBox.fromSize(
                    size: Size(56, 56), // button width and height
                    child: ClipOval(
                      child: Material(
                        color: Colors.cyan[200], // button color
                        child: InkWell(
                          splashColor: Colors.yellow[200], // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.add), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text('Add by Name'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 10, 30),
                  child: SizedBox.fromSize(
                    size: Size(56, 56), // button width and height
                    child: ClipOval(
                      child: Material(
                        color: Colors.cyan[200], // button color
                        child: InkWell(
                          splashColor: Colors.yellow[200], // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.add), // icon
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text('Add by Faverite'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'Time'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
              child: Text('Trip List'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  OutlineButton(
                    child: Text('Enter'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/trip-page');
                    },
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