import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotState();
  }
}

class _ForgotState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เปลี่ยนรหัสผ่าน'),
        backgroundColor: Colors.cyan[200],
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'บัญชีผู้ใช้'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  OutlineButton(
                    child: Text('ยืนยัน'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login-page');
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