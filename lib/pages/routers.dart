import 'tabs.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'machine.dart';
import 'news.dart';



final routes = {'/': (context) => Tabs(),
//  '/music': (context,{arguments}) => MusicPlayerExample(arguments:arguments),
// '/search': (context) => Search(),
// '/searchDetail': (context,{arguments}) => SearchDetail(arguments:arguments),
};

var onGenerateRoute = (RouteSettings settinge) {
  final String name = settinge.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settinge.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settinge.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
