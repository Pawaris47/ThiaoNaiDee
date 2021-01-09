import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FastPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FastState();
  }
}

class _FastState extends State<FastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fast Trip'),
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