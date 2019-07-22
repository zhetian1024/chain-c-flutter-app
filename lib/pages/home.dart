import 'dart:developer';
import 'package:chain_c_app_flutter/Provide/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../Provide/auth.dart';
import 'package:chain_c_app_flutter/config/common.dart';
import 'package:chain_c_app_flutter/res/language.dart';
import 'package:fluintl/fluintl.dart';

class Home extends StatelessWidget {
  // Counter get _counter => Provide.value<Counter>(context);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color theme = Provide.value<Auth>(context).getAuthState().theme;

    return InkWell(onTap: () {
      // print(Provide.value<Auth>(context).getIdtoken();
    }, 
    child:Text(theme.toString())
     
    );
  }
}
