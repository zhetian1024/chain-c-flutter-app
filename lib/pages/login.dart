import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录与验证'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          
          child: Center(
            child: Column(
              children: <Widget>[Image.asset("images/smartphone.png")],
            ),
          ),
        ),
      ),
    );
  }
}
