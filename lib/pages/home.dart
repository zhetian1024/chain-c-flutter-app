import 'dart:developer';
import 'package:chain_c_app_flutter/Provide/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provide/auth.dart';
import 'package:chain_c_app_flutter/config/common.dart';
import 'package:chain_c_app_flutter/res/language.dart';
import 'package:fluintl/fluintl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chain_c_app_flutter/res/http_config.dart';

class Home extends StatelessWidget {
  // Counter get _counter => Provide.value<Counter>(context);

  save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('hwq', '123');
  }

  Future<String> gethwq() async {
    var userName;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userName = await prefs.getString('hwq');
    return userName;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    Color theme = Provider.of<Auth>(context).authState.theme;
    print(LOCAL_MACHINE_IP);
    return InkWell(
        onTap: () {
          // print(gethwq());
          // print(Provide.value<Auth>(context).getIdtoken();
        },
        child: Container(
          color: theme,
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  gethwq();
                },
                child: Text("hwq"),
              ),
              RaisedButton(
                onPressed: () {
                  save();
                },
                child: Text("保存"),
              ),
            ],
          ),
        ));
  }
}
