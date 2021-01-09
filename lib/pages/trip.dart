import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TripState();
  }
}

class _TripState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                )),
            title: Text('แผนการเดินทาง'),
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
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 80, 0, 40),
                  child: FlatButton(
                    onPressed: () => {Navigator.pushNamed(context, '/make-page')},
                    color: Colors.cyan[200],
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.add),
                        Text("New Trip")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 80, 0, 40),
                  child: FlatButton(
                    onPressed: () => {Navigator.pushNamed(context, '/fast-page')},
                    color: Colors.cyan[200],
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.add),
                        Text("Fast Trip")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text('Trip List')
          ],
        ),
      ),
    );
  }
}