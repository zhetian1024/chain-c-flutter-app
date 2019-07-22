import 'dart:developer';

import 'package:chain_c_app_flutter/Provide/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../Provide/auth.dart';
import 'package:chain_c_app_flutter/config/common.dart';
class Home extends StatelessWidget {
  // Counter get _counter => Provide.value<Counter>(context);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    
    return InkWell(
      onTap: () {
        print(Provide.value<Auth>(context).getIdtoken());
      },
      child: Text("123"),
    );
  }
}
